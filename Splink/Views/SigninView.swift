//
//  ContentView.swift
//  Splink
//
//  Created by Nick on 7/12/20.
//  Copyright © 2020 Nick Won. All rights reserved.
//

import SwiftUI

struct SigninView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""
    @State var index = 0
    @EnvironmentObject var session: SessionStore
    
    func getUser(){
        session.listen()
    }
    
    func signIn(){
        session.signIn(email: email, password: password){(result,error) in
            if let error=error{
                self.error = error.localizedDescription
            }else{
                self.email = ""
                self.password = ""
            }
        }
    }
    

    var body: some View {
        Group{
        if(session.session != nil){
            Text("hello")
        }else{
            NavigationView{
                VStack {
                Spacer()
                
                HeaderView()
                
                Spacer()
                Divider()
                
                EmailTextField(email: $email)   //email text field
                
                PasswordTextField(password: $password) //password text field
                
                   
                SignInButton(action: signIn, label: TEXT_SIGN_IN)  //sign in button
                    
                    if (error != ""){
                        Text(error).font(.system(size: 14, weight: .semibold)).foregroundColor(.red).padding()
                    }
                
                Divider()
                
                    NavigationLink(destination: SignupView()){
                SignupText()
                    }
                }
            }.accentColor(Color.black)
        }
        
        }.onAppear(perform: getUser)
    }
}


struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView().environmentObject(SessionStore())
    }
}

