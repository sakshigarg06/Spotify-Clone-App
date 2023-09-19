//
//  SearchView.swift
//  Spotify Clone
//
//  Created by Sakshi Garg on 18/09/23.
//

import SwiftUI

func random() -> Color{
    let red = Double.random(in: 0 ... 1)
    let green = Double.random(in: 0 ... 1)
    let blue = Double.random(in: 0 ... 1)
    return Color(red: red, green: green, blue: blue)
}
struct SearchView: View {
    var mainPlaylists: Playlist
    @State var srch: String = ""
    var body: some View {
        ZStack(alignment: .leading){
            LinearGradient(gradient: Gradient(colors:[.black]), startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            ScrollView{
                VStack(alignment: .leading){
                    Text("Search")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom,5)
                }
                HStack{
                    Spacer(minLength: 0)
                    HStack(alignment: .center, spacing: 10){
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 15, height: 15, alignment: .center)
                            .foregroundColor(.black)
                            .frame(minWidth: 0, maxWidth: 30)
                            .frame(minHeight: 0, maxHeight: 33)
                        TextField("Artists, Songs, or Podcasts",text: $srch)
                            .frame(height: 40)
                    }
                    .padding([.top,.bottom],2)
                    .padding(.leading,5)
                    .background(Color.white, alignment: .center)
                    .cornerRadius(5)
                    
                    Spacer(minLength: 0)
                }
                .padding(.bottom,5)
                
                Text("Your top genres")
                    .fontWeight(.bold)
                
                HStack{
                    Spacer()
                    GenreView(playlists: playlists[0])
                    GenreView(playlists: playlists[1])
                    GenreView(playlists: playlists[2])
                    Spacer()
                }
                HStack{
                    GenreView(playlists: playlists[3])
                        .padding(.leading,10)
                    Spacer()
                }
                Text("Browse All")
                    .fontWeight(.bold)
                    .padding(.top,10)
                ForEach(0..<5){ _ in
                    HStack{
                        Spacer()
                        GenreView(playlists: playlists[0])
                        GenreView(playlists: playlists[1])
                        GenreView(playlists: playlists[2])
                        Spacer()
                    }
                    .padding(.bottom,5)
                }
                Spacer()
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(mainPlaylists: playlists[0])
    }
}
