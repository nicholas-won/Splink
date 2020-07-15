//
//  ContentView.swift
//  Splink
//
//  Created by Nick on 7/14/20.
//  Copyright © 2020 Nick Won. All rights reserved.
//

import SwiftUI


struct CustomTabBar: View {
    
    //Things to initialize when implementing tab bar in other classes
    //  @State var index = 0
    // implement Tab bar with CustomTabBar(index: self.$index)
    
    @Binding var index: Int
    
    var body: some View {
        VStack {
            Spacer()
            HStack{
                Button(action:{self.index=0}){
                    Image(systemName: "house.fill")
                }.foregroundColor(Color.black.opacity(self.index == 0 ? 1: 0.5)).offset( y: 5)
                
                Spacer(minLength: 0)
                
                Button(action:{self.index=1}){
                    Image(systemName: "magnifyingglass")
                }.foregroundColor(Color.black.opacity(self.index == 1 ? 1: 0.5)).offset( y: 5)
                
                Spacer(minLength: 0)
                
                Button(action:{}){
                    Image(systemName: "camera.fill").foregroundColor(.black)
                }.offset(y: 5)
                
                Spacer(minLength: 0)
                
                Button(action:{self.index=2}){
                    Image(systemName: "link")
                }.foregroundColor(Color.black.opacity(self.index == 2 ? 1: 0.5)).offset( y: 5)
                
                Spacer(minLength: 0)
                
                Button(action:{self.index=3}){
                    Image(systemName: "person")
                }.foregroundColor(Color.black.opacity(self.index == 3 ? 1: 0.5)).offset( y: 5)
                
            }.padding(.horizontal, 35).background(Color.white)
        }
    }
}
