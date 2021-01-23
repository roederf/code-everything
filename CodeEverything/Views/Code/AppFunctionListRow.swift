//
//  AppFunctionListRow.swift
//  CodeEverything
//
//  Created by Florian Roeder on 22.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import SwiftUI

struct AppFunctionListRow: View {
    var appFunction: FunctionViewModel
    
    var body: some View {
        HStack {
            Text(appFunction.name)
            Spacer()
        }
    }
}

struct AppFunctionListRow_Previews: PreviewProvider {
    static var appFunction = MainViewModel().appFunctions[0]
    static var previews: some View {
        AppFunctionListRow(appFunction: appFunction)
    }
}
