//
//  RMSearchViewController.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 16.01.2023.
//

import UIKit

final class RMSearchViewController: UIViewController {
    
    struct Config {
        enum `Type` {
            case character
            case episode
            case location
            
            var title: String {
                switch self {
                case .episode:
                    return "Search Characters"
                case .location:
                    return "Search Locations"
                case .character:
                    return "Search Characters"
                }
            }
        }
        
        let type: `Type`
    }
    
    private let config: Config
    
    init(config: Config) {
        self.config = config
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = config.type.title
        view.backgroundColor = .systemBackground
    }
    
}
