//
//  RMSettingsViewController.swift
//  RickAndMorty
//
//  Created by Ramill Ibragimov on 29.12.2022.
//

import SwiftUI
import UIKit

final class RMSettingsViewController: UIViewController {
    
    private let settingsSwiftUIController = UIHostingController(
        rootView: RMSettingsView(
            viewModel: RMSettingsViewModel(
                cellViewModels: RMSettingsOption.allCases.compactMap({
                    return RMSettingsCellViewModel(type: $0)
                })
            )
        )
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Settings"
        addSwiftUIController()
    }
  
    private func addSwiftUIController() {
        addChild(settingsSwiftUIController)
        settingsSwiftUIController.didMove(toParent: self)
        
        view.addSubview(settingsSwiftUIController.view)
        settingsSwiftUIController.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            settingsSwiftUIController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            settingsSwiftUIController.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            settingsSwiftUIController.view.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            settingsSwiftUIController.view.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
        ])
    }
    

}
