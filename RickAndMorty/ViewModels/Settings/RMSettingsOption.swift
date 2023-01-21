//
//  RMSettingsOption.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 21.01.2023.
//

import UIKit

enum RMSettingsOption: CaseIterable {
    
    case reteApp
    case contactUs
    case terms
    case privacy
    case apiReference
    case viewSeries
    case viewCode
    
    var displayTitle: String {
        switch self {
        case .reteApp:
            return "Rate App"
        case .contactUs:
            return "Contacs Us"
        case .terms:
            return "Terms of Service"
        case .privacy:
            return "Privacy Policy"
        case .apiReference:
            return "API Reference"
        case .viewSeries:
            return "View Video Series"
        case .viewCode:
            return "View App Code"
        }
    }
    
    var iconContainerColor: UIColor {
        switch self {
        case .reteApp:
            return .systemRed
        case .contactUs:
            return .systemBlue
        case .terms:
            return .systemGreen
        case .privacy:
            return .systemOrange
        case .apiReference:
            return .systemBackground
        case .viewSeries:
            return .systemMint
        case .viewCode:
            return .systemTeal
        }
    }
    
    var iconImage: UIImage? {
        switch self {
        case .reteApp:
            return UIImage(systemName: "star.fill")
        case .contactUs:
            return UIImage(systemName: "paperplane")
        case .terms:
            return UIImage(systemName: "doc")
        case .privacy:
            return UIImage(systemName: "lock")
        case .apiReference:
            return UIImage(systemName: "list.clipboard")
        case .viewSeries:
            return UIImage(systemName: "tv.fill")
        case .viewCode:
            return UIImage(systemName: "hammer.fill")
        }
    }
}
