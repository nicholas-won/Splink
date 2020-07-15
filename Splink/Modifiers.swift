//
//  Modifiers.swift
//  Splink
//
//  Created by Nick on 7/12/20.
//  Copyright © 2020 Nick Won. All rights reserved.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View{
        content.padding().border(COLOR_LIGHT_GRAY ,width: 1).padding([.leading, .trailing, .top])
    }
}

struct SigninButtonModifier: ViewModifier{
    func body(content: Content) -> some View{
        content.padding().background(Color.black).cornerRadius(5).shadow(radius: 10, x: 0 , y: 10).padding()
    }
}
