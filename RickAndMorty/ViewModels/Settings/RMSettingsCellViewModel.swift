//
//  RMSettingsCellViewModel.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 21.01.2023.
//

import UIKit

struct RMSettingsCellViewModel: Identifiable {
    
    let id: UUID = UUID()
    
    public let type: RMSettingsOption
    public let onTapHandler: (RMSettingsOption) -> Void
    
    init(type: RMSettingsOption, onTapHandler: @escaping (RMSettingsOption) -> Void) {
        self.type = type
        self.onTapHandler = onTapHandler
    }
    
    public var iconContainerColor: UIColor {
        return type.iconContainerColor
    }
    
    public var image: UIImage? {
        return type.iconImage
    }
    public var title: String {
        return type.displayTitle
    }
}
