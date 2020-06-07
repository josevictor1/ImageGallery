//
//  GalleryItem.swift
//  ImageGallery
//
//  Created by José Victor Pereira Costa on 07/06/20.
//  Copyright © 2020 José Victor Pereira Costa. All rights reserved.
//

import UIKit

struct GalleryItem: Hashable {
    
    let id: String
    let title: String
    let image: String
    let identifier = UUID()
    
    init(id: String, title: String, image: String) {
        self.id = id
        self.title = title
        self.image = image
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    
    static func == (lhs: GalleryItem, rhs: GalleryItem) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    func contains(_ filter: String?) -> Bool {
        guard let filterText = filter,
            !filterText.isEmpty else { return true }
        let lowercasedFilter = filterText.lowercased()
        return title.lowercased().contains(lowercasedFilter)
    }
}
