//
//  ContentView.swift
//  Restaurant
//
//  Created by Ellen Stavrou on 20/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            // test
            
            MenuView()
                .tabItem{
                    VStack {
                    Image(systemName: "book")
                        Text("Menu")
                    }
            }
            
            AboutView()
                .tabItem {
                    VStack {
                        Image(systemName: "info")
                        Text("Info")
                    }
                }
            
            GalleryView()
                .tabItem {
                    VStack{
                        Image(systemName: "photo")
                        Text("Gallery")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
