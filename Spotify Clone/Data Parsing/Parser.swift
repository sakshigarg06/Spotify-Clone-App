//
//  Parser.swift
//  Spotify Clone
//
//  Created by Sakshi Garg on 16/09/23.
//

import Foundation

var albums: [Album] = load("AlbumData.json")
var podcasts: [Podcast] = load("PodcastData.json")
var isles: [AlbumDetails] = load("Isles.json")
var playlists: [Playlist] = load("PlaylistData.json")

func load<T:Decodable> (_ filename: String) -> T{
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
