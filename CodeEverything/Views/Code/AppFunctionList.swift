//
//  AppFunctionList.swift
//  CodeEverything
//
//  Created by Florian Roeder on 22.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import SwiftUI

struct AppFunctionList: View {
    @EnvironmentObject var viewModel: MainViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.appFunctions) { appFunction in
                    NavigationLink(destination: CodeView(appFunction: appFunction)) {
                        AppFunctionListRow(appFunction: appFunction)
                    }
                }
            }
        }
    }
}

struct AppFunctionList_Previews: PreviewProvider {
    static let viewModel = MainViewModel()
    
    static var previews: some View {
        AppFunctionList()
            .environmentObject(viewModel)
    }
}
