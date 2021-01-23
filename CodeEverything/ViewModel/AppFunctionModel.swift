//
//  FunctionViewModel.swift
//  CodeEverything
//
//  Created by Florian Roeder on 22.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import Foundation

class AppFunctionModel : ObservableObject, Identifiable {
    var id: Int
    var name: String
    var content: String
    
    init() {
        id = 0
        name = ""
        content = ""
    }
    
    func toScript() -> String {
        return content
    }
}
