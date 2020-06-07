//
//  ImageGalleryConfigurator.swift
//  ImageGallery
//
//  Created by José Victor Pereira Costa on 07/06/20.
//  Copyright © 2020 José Victor Pereira Costa. All rights reserved.
//

import UIKit

protocol ImageGalleryConfiguratorProtocol {
    func configureCell(in collectionView: UICollectionView, with index: IndexPath, and item: GalleryItem) -> UICollectionViewCell?
}

class ImageGalleryConfigurator: ImageGalleryConfiguratorProtocol {
    
    func configureCell(in collectionView: UICollectionView,
                       with index: IndexPath,
                       and item: GalleryItem) -> UICollectionViewCell? {
        
    }
}
