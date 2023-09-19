//
//  GenreView.swift
//  Spotify Clone
//
//  Created by Sakshi Garg on 18/09/23.
//

import SwiftUI

struct GenreView: View {
    var playlists: Playlist
    var body: some View {
        ZStack(alignment: .leading){
            LinearGradient(gradient: Gradient(colors: [random()]), startPoint: .leading, endPoint: .trailing)
            HStack(alignment: .top){
                Text(playlists.genre)
                    .font(.system(size: 14))
                    .kerning(0)
                    .fontWeight(.bold)
                    .padding(.leading,10)
                    .padding(.top,-15)
                Spacer()
                Image(playlists.img)
                    .resizable()
                    .frame(width: 50,height: 50)
                    .rotationEffect(.degrees(25))
                    .padding(.trailing,-18)
                    .padding(.bottom,-20)
            }
        }
        .frame(width: 120, height: 70)
        .clipShape(Rectangle())
        .cornerRadius(5)
    }
}

struct GenreView_Previews: PreviewProvider {
    static var previews: some View {
        GenreView(playlists: playlists[0])
    }
}
