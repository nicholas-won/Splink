//
//  EmailTextField.swift
//  Splink
//
//  Created by Nick on 7/12/20.
//  Copyright © 2020 Nick Won. All rights reserved.
//

import SwiftUI

struct EmailTextField: View {
    
    @Binding var email: String
    
    var body: some View {
        HStack{
            Image(systemName: "envelope.fill").foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.3))
            
            TextField(TEXT_EMAIL, text: $email)
        }.modifier(TextFieldModifier())
    }
}
