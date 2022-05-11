//
//  Request.swift
//  SpotifyClone
//
//  Created by MAC45 on 10/05/22.
//

import Foundation

class Request{
    let token = "BQCr43UPcSjAzEKt-UMlKVf9EMebIDAI5BV4Af4ZVAiqcu5P-lqiKT5I3zS4quWXqTG7Pk6VwPcnmA8e7ofe7GPN2e8eylS3G4XMq38zl7UC6Hfa5Ju76RQo5ighyrQdYQCACFeFMaBVkc3cb2l4wM7ry-_nGyri67txrd99foUf7didRbImvg"
    
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    // ojo recuerden que si un type tiene el ? es porque puede ser nil
    // en este caso estamos diciendo que nuestra funcion retorna un Data o nil
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
}
