//
//  ViewController.swift
//  ImageGallery
//
//  Created by José Victor Pereira Costa on 06/06/20.
//  Copyright © 2020 José Victor Pereira Costa. All rights reserved.
//

import UIKit

enum GallerySection: CaseIterable {
    case main
}

class ImageGalleryViewController: UICollectionViewController {
    private typealias DataSource = UICollectionViewDiffableDataSource<GallerySection, GalleryItem>
     
    // MARK: - Properties
    
    private lazy var dataSource = DataSource(collectionView: collectionView) { [unowned self] collectionView, index, item in
        self.configurator?.configureCell(in: collectionView, with: index, and: item)
    }
    
    private var configurator: ImageGalleryConfiguratorProtocol?
    
    // MARK: - Subviews
    
    private lazy var searchController: UISearchController = {
        let searchController = UISearchController()
        searchController.hidesNavigationBarDuringPresentation = true
        searchController.searchBar.autocapitalizationType = .none
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
        return searchController
    }()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    // MARK: - Setup
    
    private func setUp() {
        title = LocalizedStrings.imageGalleryTitle.localized
        setUpSearchController()
        setUpNavigationController()
        setUpCollectionView()
    }
    
    private func setUpSearchController() {
        definesPresentationContext = true
        navigationItem.searchController = searchController
    }
    
    private func setUpNavigationController() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = .secondaryLabel
    }
    
    private func setUpCollectionView() {
        collectionView.backgroundColor = .systemBackground
    }
    
    fileprivate func performQuery(with filter: String) {
        
    }
}
// MARK: - UISearchBarDelegate

extension ImageGalleryViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        performQuery(with: searchText)
    }
}

extension ImageGalleryViewController {
    
    static func makeImageGallery() -> ImageGalleryViewController {
        return ImageGalleryViewController(collectionViewLayout: UICollectionViewLayout())
    }
}
