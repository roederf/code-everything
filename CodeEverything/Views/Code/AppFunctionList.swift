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
    
    @State private var selectedView: Int? = 0
        
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
            .onAppear{
                let device = UIDevice.current
                if device.model == "iPad" && device.orientation.isLandscape{
                    self.selectedView = 1
                } else {
                    self.selectedView = 0
                }
            }
            .navigationTitle(viewModel.appName)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        
                    }) {
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
