//
//  PodcastData.swift
//  Spotify Clone
//
//  Created by Sakshi Garg on 18/09/23.
//

import Foundation

struct Podcast: Hashable,Codable{
    var img: String
    var podcast: String
    var episode: String
    var network: String
    var time: String
    var timeleft: Int
    var duration: Int
    var desc: String
}
