//
//  RMEpisodeDetailsViewViewModel.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 13.01.2023.
//

import Foundation

final class RMEpisodeDetailsViewViewModel {
    
    private let endpointUrl: URL?
    
    init(endpointUrl: URL?) {
        self.endpointUrl = endpointUrl
        fetchEpisodeData()
    }
    
    private func fetchEpisodeData() {
        guard let url = endpointUrl,
              let request = RMRequest(url: url) else {
            return
        }
        
        RMService.share.execute(request,
                                expecting: RMEpisod.self) { result in
            switch result {
            case .success(let success):
                print(String(describing: success))
            case .failure:
                break
            }
        }
    }
}
