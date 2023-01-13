//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 29.12.2022.
//

import Foundation

@frozen enum RMEndpoint: String, CaseIterable, Hashable {
    case character
    case location
    case episode
}
