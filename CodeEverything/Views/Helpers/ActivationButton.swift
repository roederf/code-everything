//
//  ActivationButton.swift
//  CodeEverything
//
//  Created by Florian Roeder on 04.01.21.
//  Copyright © 2021 Florian Roeder. All rights reserved.
//

import SwiftUI

struct ActivationButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
                isSet.toggle()
            
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }
    }
}

struct ActivationButton_Previews: PreviewProvider {
    static var previews: some View {
        ActivationButton(isSet: .constant(true))
    }
}
