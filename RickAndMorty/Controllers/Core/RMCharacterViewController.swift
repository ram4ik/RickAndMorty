//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 29.12.2022.
//

import UIKit

final class RMCharacterViewController: UIViewController {
    
    private let characterListView = CharactersListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
        setUpView()
    }
    
    private func setUpView() {
        view.addSubview(characterListView)
        NSLayoutConstraint.activate([
            characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            characterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
}
