//
//  Spotify+String.swift
//  SpotifyClone
//
//  Created by MAC45 on 10/05/22.
//

import Foundation

class HelperString {
    
    static let imageProfileLink = "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=838905826177628&height=300&width=300&ext=1654766554&hash=AeTe7aJvn714SoG-4GA"
    
    static func getURLFromString(url: String) -> URL? {
        guard let url = URL(string: url) else { return nil }
        
        return url
    }
    
}
