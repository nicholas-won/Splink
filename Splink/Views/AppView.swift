//
//  AppView.swift
//  Splink
//
//  Created by Nick on 7/26/20.
//  Copyright © 2020 Nick Won. All rights reserved.
//

import SwiftUI

struct AppView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            Text("Feed View").font(.title).tabItem{
                VStack{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            }.tag(0)
            
            Text("Explore View").font(.title).tabItem{
                VStack{
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }
            }.tag(0)
            
            Text("Link View").font(.title).tabItem{
                VStack{
                    Image(systemName: "link")
                    Text("Links")
                }
            }.tag(0)
            
            Text("Profile View").font(.title).tabItem{
                VStack{
                    Image(systemName: "person")
                    Text("Profile")
                }
            }.tag(0)
            
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
