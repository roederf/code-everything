//
//  FileListRow.swift
//  CodeEverything
//
//  Created by Florian Roeder on 03.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import SwiftUI

struct FileListRow: View {
    var file: FileModel
    
    var body: some View {
        HStack {
            file.image
            .resizable()
            .frame(width: 50, height: 50)
            
            Text(file.name)
            
            Spacer()
            
            if file.isActive {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct FileListRow_Previews: PreviewProvider {
    static var codeFiles = ModelData().codeFiles
    
    static var previews: some View {
        Group {
            FileListRow(file: codeFiles[0])
            FileListRow(file: codeFiles[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
