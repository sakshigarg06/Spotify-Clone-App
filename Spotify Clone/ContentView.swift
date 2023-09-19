//
//  ContentView.swift
//  Spotify Clone
//
//  Created by Sakshi Garg on 15/09/23.
//

import SwiftUI

struct ContentView: View {
    
    let darkGray: Color = Color(red:0.15,green: 0.15,blue: 0.15)
    init(){
        UITabBar.appearance().barTintColor = .black
    }
    var body: some View {
        TabView{
            HomeView(mainAlbums: albums[0], mainPodcasts: podcasts[0])
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            SearchView(mainPlaylists: playlists[0])
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }.tag(1)
            LibraryView()
                .tabItem{
                    Image(systemName: "books.vertical")
                    Text("Library")
                }.tag(2)
        }
        .accentColor(.white)
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
