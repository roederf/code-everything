//
//  DashboardViewModel.swift
//  CodeEverything
//
//  Created by Florian Roeder on 03.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import Foundation
import SwiftUI

struct FileModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var content: String
    var isActive: Bool

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}   
