//
//  AlbumList.swift
//  Spotify Clone
//
//  Created by Sakshi Garg on 18/09/23.
//

import SwiftUI

struct AlbumList: View {
    var albums: Album
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Image(albums.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                Text(albums.album)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .padding(.top,2)
                Text("Album · \(albums.artist)")
                    .foregroundColor(.white)
                    .font(.system(size: 13))
                    .padding(.top,1)
            }
        }
    }
}

struct AlbumList_Previews: PreviewProvider {
    static var previews: some View {
        AlbumList(albums: albums[0])
    }
}
