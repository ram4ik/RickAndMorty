//
//  RMService.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 29.12.2022.
//

import Foundation

final class RMService {
    static let share = RMService()
    
    private init() {}
    
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
}
