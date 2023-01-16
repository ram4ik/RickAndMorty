//
//  RMLocationViewController.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 29.12.2022.
//

import UIKit

final class RMLocationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Locations"
        
        addSearchButton()
    }

    private func addSearchButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(didTapSearch))
    }
    
    @objc private func didTapSearch() {
        
    }
    
}
