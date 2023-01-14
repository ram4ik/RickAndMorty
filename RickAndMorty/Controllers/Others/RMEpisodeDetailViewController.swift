//
//  RMEpisodeDetailViewController.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 12.01.2023.
//

import UIKit

final class RMEpisodeDetailViewController: UIViewController {

    private let url: RMEpisodeDetailsViewViewModel
    
    init(url: URL?) {
        self.url = .init(endpointUrl: url)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Episode"
        view.backgroundColor = .systemGreen
    }
}