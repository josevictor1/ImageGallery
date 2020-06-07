//
//  SceneDelegate.swift
//  ImageGallery
//
//  Created by José Victor Pereira Costa on 06/06/20.
//  Copyright © 2020 José Victor Pereira Costa. All rights reserved.
//

import UIKit
import Core

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator: Coordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        startCoordinator()
    }
    
    func startCoordinator() {
        guard let window = window else { return }
        let coordinator = MainCoordinator(window: window)
        self.coordinator = coordinator
        coordinator.start()
    }
}

