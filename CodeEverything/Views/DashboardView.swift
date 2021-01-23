//
//  Dashboard.swift
//  CodeEverything
//
//  Created by Florian Roeder on 03.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var viewModel: MainViewModel
    
    var body: some View {
        ZStack {
            if !viewModel.isRunning {
                AppCodeView()
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
            }

            if viewModel.isRunning {
                RunView()
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .trailing)))
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static let viewModel = MainViewModel()
    static var previews: some View {
        DashboardView()
            .environmentObject(viewModel)
    }
}
