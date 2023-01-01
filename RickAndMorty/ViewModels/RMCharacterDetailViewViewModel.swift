//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 01.01.2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased() 
    }
}
