//
//  FileList.swift
//  CodeEverything
//
//  Created by Florian Roeder on 03.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import SwiftUI

struct FileList: View {
    var body: some View {
        NavigationView {
            List(codeFiles) { codeFile in
                NavigationLink(destination: CodeView(codeFile: codeFile)) {
                    FileListRow(file: codeFile)
                }
            }
        .navigationBarTitle("Files")
        }
    }
}

struct FileList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max", "iPad Pro"], id: \.self) { deviceName in
            FileList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
