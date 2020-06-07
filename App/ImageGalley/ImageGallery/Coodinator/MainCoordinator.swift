//
//  MainCoordinator.swift
//  ImageGallery
//
//  Created by José Victor Pereira Costa on 06/06/20.
//  Copyright © 2020 José Victor Pereira Costa. All rights reserved.
//

import Core
import UIKit

class MainCoordinator: Coordinator {
    
    var parent: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController?
    
    init(window: UIWindow) {
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        self.navigationController = navigationController
        window.makeKeyAndVisible()
    }
    
    func start() {
        navigateToImageGallery()
    }
    
    private func navigateToImageGallery() {
        guard let navigationController = navigationController else { return }
        let coordinator: ImageGalleryCoordinator = .instantiate(navigationController: navigationController,
                                                                parent: self)
        coordinator.start()
    }
}
