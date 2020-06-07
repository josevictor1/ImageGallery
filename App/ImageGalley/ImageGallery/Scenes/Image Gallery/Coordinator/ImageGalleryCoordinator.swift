//
//  ImageGalleryCoordinator.swift
//  ImageGallery
//
//  Created by José Victor Pereira Costa on 06/06/20.
//  Copyright © 2020 José Victor Pereira Costa. All rights reserved.
//

import Core
import UIKit

class ImageGalleryCoordinator: NavigationCoordinator {
    
    var navigationController: UINavigationController?
    
    var parent: Coordinator?
    
    var children: [Coordinator] = []
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigateToImageGallery()
    }
    
    private func navigateToImageGallery() {
        let viewController: ImageGalleryViewController = .makeImageGallery()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
