//
//  playlistData.swift
//  Spotify Clone
//
//  Created by Sakshi Garg on 18/09/23.
//

import Foundation

struct Playlist: Hashable,Codable{
    var img: String
    var name: String
    var genre: String
    var creator: String
}
