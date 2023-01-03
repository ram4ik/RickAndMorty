//
//  RMCharacterListViewCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 29.12.2022.
//

import Foundation

final class RMCharacterListViewCollectionViewCellViewModel: Hashable, Equatable {
    
    public let characterName: String
    private let characterStatus: RMCharacterStatus
    private let characterImageUrl: URL?
    
    init(
        characterName: String,
        characterStatus: RMCharacterStatus,
        characterImageUrl: URL?
    ) {
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterImageUrl = characterImageUrl
    }
    
    public var characterStatusText: String {
        return "Status: \(characterStatus.text)"
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = characterImageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        
        RMImageLoader.shared.downloadImage(url, completion: completion)
    }
    
    static func == (lhs: RMCharacterListViewCollectionViewCellViewModel, rhs: RMCharacterListViewCollectionViewCellViewModel) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(characterName)
        hasher.combine(characterStatus)
        hasher.combine(characterImageUrl)
    }
}
