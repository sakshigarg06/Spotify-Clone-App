//
//  ArtistRow.swift
//  Spotify Clone
//
//  Created by Sakshi Garg on 19/09/23.
//

import SwiftUI

struct ArtistRow: View {
    var albums: Album
    var body: some View {
        HStack{
            Image(albums.artistimg)
                .resizable()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 65, height: 65)
            Text(albums.artist)
                .font(.headline).bold()
                .padding(.leading, 10)
            Spacer()
        }
    }
}

struct ArtistRow_Previews: PreviewProvider {
    static var previews: some View {
        ArtistRow(albums: albums[0])
    }
}
