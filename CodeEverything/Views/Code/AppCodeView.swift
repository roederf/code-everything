//
//  AppCodeView.swift
//  CodeEverything
//
//  Created by Florian Roeder on 23.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import SwiftUI

struct AppCodeView: View {
    @EnvironmentObject var viewModel: MainViewModel
                    
    var body: some View {
        AppFunctionList()
    }
}

struct AppCodeView_Previews: PreviewProvider {
    static let viewModel = MainViewModel()
    
    static var previews: some View {
        AppCodeView()
            .environmentObject(viewModel)
    }
}

