//
//  SignupView.swift
//  Splink
//
//  Created by Nick on 7/12/20.
//  Copyright © 2020 Nick Won. All rights reserved.
//

import SwiftUI

struct SignupText: View {
    var body: some View {
        HStack{
            Text(TEXT_NEED_AN_ACCOUNT).font(.footnote).foregroundColor(.gray)
            Text(TEXT_SIGN_UP).foregroundColor(.black)
        }
    }
}
