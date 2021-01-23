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
    
    var headerBar: some View {
        ZStack {
            HStack {
                Text(viewModel.appName)
                Spacer()
                Button(action: {
                    withAnimation(.easeOut(duration: 0.3)) {
                        viewModel.run()
                    }
                }) {
                    Image(systemName: "play")
                        .font(.system(size: 20, weight: .regular))
                        .imageScale(.large)
                        .foregroundColor(.white)
                        .padding(.bottom, 4)
                }
            }
            .padding()
        }
        .foregroundColor(Color.white)
        .background(Color(red:0.5,green:0.5,blue:0.5))
    }
                
    var body: some View {
        VStack(spacing: 0) {
            headerBar
                
            AppFunctionList()
        }
    }
}

struct AppCodeView_Previews: PreviewProvider {
    static let viewModel = MainViewModel()
    
    static var previews: some View {
        AppCodeView()
            .environmentObject(viewModel)
    }
}

