//
//  AppFunctionList.swift
//  CodeEverything
//
//  Created by Florian Roeder on 22.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import SwiftUI

struct AppFunctionList: View {
    var appFunctions: [FunctionViewModel]
    
    var body: some View {
        NavigationView {
            List(appFunctions) { appFunction in
                AppFunctionListRow(functionViewModel: appFunction)
            }
        }
    }
}

struct AppFunctionList_Previews: PreviewProvider {
    static let viewModel = MainViewModel()
    
    static var previews: some View {
        AppFunctionList(appFunctions: viewModel.appFunctions)
    }
}
