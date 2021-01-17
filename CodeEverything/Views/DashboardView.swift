//
//  Dashboard.swift
//  CodeEverything
//
//  Created by Florian Roeder on 03.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var isRunning = false
    
    var body: some View {
        ZStack {
            if !isRunning {
                CodeView(isRunning: $isRunning)
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
            }

            if isRunning {
                RunView(isRunning: $isRunning)
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .trailing)))
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
