//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 29.12.2022.
//

import UIKit

final class RMCharacterViewController: UIViewController, RMCharacterListViewDelegate {
    
    private let characterListView = CharactersListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
        setUpView()
        addSearchButton()
    }
    
    private func addSearchButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(didTapSearch))
    }
    
    @objc private func didTapSearch() {
        let vc = RMSearchViewController(config: RMSearchViewController.Config(type: .character))
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func setUpView() {
        characterListView.delegate = self
        view.addSubview(characterListView)
        NSLayoutConstraint.activate([
            characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            characterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    func rmCharacterListView(_ characterListView: CharactersListView, didSelectCharacter character: RMCharacter) {
        
        let viewModel = RMCharacterDetailViewViewModel(character: character)
        let detailVC = RMCharacterDetailViewController(viewModel: viewModel)
        detailVC.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}
