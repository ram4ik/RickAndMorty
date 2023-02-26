//
//   RMSearchResultViewModel.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 26.02.2023.
//

import Foundation

enum RMSearchResultViewModel {
    case characters([RMCharacterListViewCollectionViewCellViewModel])
    case episodes([RMCharacterEpisodeCollectionViewCellViewModel])
    case locations([RMLocationTableViewCellViewModel])
}
