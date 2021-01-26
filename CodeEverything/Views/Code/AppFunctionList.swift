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
    
    @State private var selectedView: Int? = 1
        
    var body: some View {
        
        NavigationView {
            List {
                ForEach(viewModel.appFunctions) { appFunction in
                    NavigationLink(destination: CodeView(theFunction: appFunction),
                                   tag: appFunction.id,
                                   selection: self.$selectedView,
                                   label: {
                                    AppFunctionListRow(appFunction: appFunction)
                                })
                }
            }
            .navigationTitle(viewModel.appName)
            .navigationBarItems(
                trailing:
                    Button(action: viewModel.addFunction) {
                        Image(systemName: "plus")
                            .font(.system(size: 20, weight: .regular))
                            .imageScale(.large)
                            .foregroundColor(.black)
                            .padding(.bottom, 4)
                    }
            )
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
