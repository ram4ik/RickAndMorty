//
//  RMEpisodeDetailView.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 13.01.2023.
//

import UIKit

final class RMEpisodeDetailView: UIView {
    
    private var viewModel: RMEpisodeDetailsViewViewModel?
    
    private var collectionView: UICollectionView?
    
    private let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView()
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .red
        self.collectionView = createCollectionView()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
    
    private func createCollectionView() -> UICollectionView {
        
        return UICollectionView()
    }
    
    public func configure(with viewModel: RMEpisodeDetailsViewViewModel) {
        self.viewModel = viewModel
    }
}

