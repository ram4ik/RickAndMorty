//
//  RMLocationViewModel.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 26.01.2023.
//

import Foundation

final class RMLocationViewModel {
    
    private var locations: [RMLocation] = []
    
    private var cellViewModels: [String] = []
    
    init() {
        
    }
    
    public func fetchLocations() {
        RMService.share.execute(.listLocationsRequest, expecting: String.self) { result in
            switch result {
            case .success(let model):
                break
            case .failure(let error):
                break
            }
        }
    }
    
    private var hasMoreResults: Bool {
        return false
    }
}
