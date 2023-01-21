//
//  RMSettingsCellViewModel.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 21.01.2023.
//

import UIKit

struct RMSettingsCellViewModel: Identifiable, Hashable {
    
    let id: UUID = UUID()
    
    public var image: UIImage? {
        return type.iconImage
    }
    public var title: String {
        return type.displayTitle
    }
    
    private let type: RMSettingsOption
    
    init(type: RMSettingsOption) {
        self.type = type
    }
    
    public var iconContainerColor: UIColor {
        return type.iconContainerColor
    }
}
