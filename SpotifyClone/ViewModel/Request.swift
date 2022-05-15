//
//  Request.swift
//  SpotifyClone
//
//  Created by MAC45 on 10/05/22.
//

import Foundation

class Request{
    let token = "BQCZNeE7-hPFGQvo861FTNJGaQrEiqv0jVzX3UXGTZJFH7THOrpoDYoFhAK0Vg4P35A1S1H-8AHrV-vgDViM3PflAdZnXS6smDC0DvjPOiQ5RSdSIfGGF-ThOwFshf_ln8g40xDXUDGx0vVYsGDIbYFSohHdc_D5OpFPdhFhkeoAtc3T5MT17w"
    
    
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
