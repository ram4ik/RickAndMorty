//
//  RMEpisodeDetailsViewViewModel.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 13.01.2023.
//

import Foundation

protocol RMEpisodeDetailsViewViewModelDelegate: AnyObject {
    func didFetchEpisodeDetails()
}

final class RMEpisodeDetailsViewViewModel {
    
    private let endpointUrl: URL?
    private var dataTuple: (RMEpisod, [RMCharacter])? {
        didSet {
            delegate?.didFetchEpisodeDetails()
        }
    }
    
    public weak var delegate: RMEpisodeDetailsViewViewModelDelegate?
    
    init(endpointUrl: URL?) {
        self.endpointUrl = endpointUrl
    }
    
    public func fetchEpisodeData() {
        guard let url = endpointUrl,
              let request = RMRequest(url: url) else {
            return
        }
        
        RMService.share.execute(request,
                                expecting: RMEpisod.self) { [weak self] result in
            switch result {
            case .success(let model):
                self?.fetchReleatedCharacters(episode: model)
            case .failure:
                break
            }
        }
    }
    
    private func fetchReleatedCharacters(episode: RMEpisod) {
        let requests: [RMRequest] = episode.characters.compactMap({
            return URL(string: $0)
        }).compactMap({
            return RMRequest(url: $0)
        })
        
        let group = DispatchGroup()
        var characters: [RMCharacter] = []
        for request in requests {
            group.enter()
            RMService.share.execute(request, expecting: RMCharacter.self) { result in
                defer {
                    group.leave()
                }
                
                switch result {
                case .success(let model):
                    characters.append(model)
                case .failure:
                    break
                }
            }
        }
        
        group.notify(queue: .main) {
            self.dataTuple = (
                episode,
                characters
            )
        }
    }
}
