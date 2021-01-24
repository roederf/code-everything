//
//  FunctionViewModel.swift
//  CodeEverything
//
//  Created by Florian Roeder on 22.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import Foundation

class AppFunctionModel : ObservableObject, Identifiable, Hashable {
    
    static func == (lhs: AppFunctionModel, rhs: AppFunctionModel) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name && lhs.content == rhs.content
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(content)
    }
    
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
