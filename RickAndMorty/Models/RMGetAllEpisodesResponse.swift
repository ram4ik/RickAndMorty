//
//  GetAllEpisodesResponse.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 15.01.2023.
//

import Foundation

struct RMGetAllEpisodesResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMEpisod]
}
