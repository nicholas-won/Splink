//
//  SignInButton.swift
//  Splink
//
//  Created by Nick on 7/12/20.
//  Copyright © 2020 Nick Won. All rights reserved.
//

import Foundation
import SwiftUI

struct SignInButton: View {
    
    var action: () -> Void
    var label: String
    
    var body: some View {
        Button(action: action) {
            HStack{
                Spacer()
                Text(label).fontWeight(.bold).foregroundColor(Color.white)
                Spacer()
            }
        }.modifier(SigninButtonModifier())
    }
}
