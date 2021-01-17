//
//  CodeEverythingApp.swift
//  CodeEverything
//
//  Created by Florian Roeder on 04.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var viewModel = CodeViewModel()

    var body: some Scene {
        WindowGroup {
            DashboardView()
                .environmentObject(viewModel)
        }
    }
}
