//
//  HeaderView.swift
//  Splink
//
//  Created by Nick on 7/12/20.
//  Copyright © 2020 Nick Won. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        Group{
            Image(IMAGE_LOGO).resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80)
            
            //image icon
            
            Text(TEXT_SIGNIN_HEADLINE).font(Font.title).padding(.bottom)
            
            //headline text
            
            Text(TEXT_SIGNIN_SUBHEADLINE).font(Font.subheadline).foregroundColor(Color.gray).multilineTextAlignment(TextAlignment.center)
        }
    }
}


