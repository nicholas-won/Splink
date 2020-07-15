//
//  SignupView.swift
//  Splink
//
//  Created by Nick on 7/12/20.
//  Copyright © 2020 Nick Won. All rights reserved.
//

import SwiftUI

struct SignupView: View {
    
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""
    @EnvironmentObject var session: SessionStore
    
    func signUp(){
        session.signUp(email: email, password: password){(result,error) in
            if let error = error{
                self.error = error.localizedDescription
            }else {
                self.email = ""
                self.password = ""
            }
        }
    }
    
    var body: some View {
        VStack{
            Image(IMAGE_USER_PLACEHOLDER).resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80).clipShape(Circle()).padding(.bottom, 80)
            
            UsernameTextField(username: $username)
            
            EmailTextField(email: $email)   //email text field
            
            VStack(alignment: .leading) {
                PasswordTextField(password: $password)
                //password text field
                Text(TEXT_SIGNUP_PASSWORD_REQUIRED).font(.footnote).foregroundColor(.gray).padding([.leading])
                
            }
            SignupButton(action: signUp, label: TEXT_SIGN_UP)
            if (error != ""){
                Text(error).font(.system(size: 14, weight: .semibold)).foregroundColor(.red).padding()
            }
            
            Divider()
            Text(TEXT_SIGNUP_NOTE).font(.footnote).foregroundColor(.gray).padding().lineLimit(nil)
        }.navigationBarTitle("Register", displayMode: .inline)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
