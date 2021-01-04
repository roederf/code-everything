//
//  FileList.swift
//  CodeEverything
//
//  Created by Florian Roeder on 03.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import SwiftUI

struct FileList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showActiveOnly = false
    
    var filteredFiles: [FileModel] {
        modelData.codeFiles.filter { codeFile in (!showActiveOnly || codeFile.isActive)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showActiveOnly) {
                    Text("Active only")
                }
                ForEach(filteredFiles) { codeFile in
                    NavigationLink(destination: CodeView(codeFile: codeFile)) {
                        FileListRow(file: codeFile)
                    }
                }
            }
        .navigationTitle("Files")
        }
    }
}

struct FileList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max", "iPad Pro"], id: \.self) { deviceName in
            FileList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
                .environmentObject(ModelData())
        }
    }
}
