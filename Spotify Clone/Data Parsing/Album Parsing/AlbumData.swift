//
//  AlbumData.swift
//  Spotify Clone
//
//  Created by Sakshi Garg on 16/09/23.
//

import Foundation

struct Album: Hashable,Codable{
    var img: String
    var album: String
    var artistimg: String
    var artist: String
    var badge: Bool
    var year: String
    var date: String
    var songs: Int
    var time: String
    var cright: String
}
