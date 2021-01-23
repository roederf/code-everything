//
//  AppFunctionListRow.swift
//  CodeEverything
//
//  Created by Florian Roeder on 22.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import SwiftUI

struct AppFunctionListRow: View {
    var functionViewModel: FunctionViewModel
    
    var body: some View {
        HStack {
            Text(functionViewModel.name)
            Spacer()
        }
    }
}

struct AppFunctionListRow_Previews: PreviewProvider {
    static var previews: some View {
        AppFunctionListRow(functionViewModel: FunctionViewModel())
    }
}
