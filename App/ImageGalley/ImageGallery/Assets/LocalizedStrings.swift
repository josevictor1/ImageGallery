//
//  LocalizedStrings.swift
//  ImageGallery
//
//  Created by José Victor Pereira Costa on 06/06/20.
//  Copyright © 2020 José Victor Pereira Costa. All rights reserved.
//

import Foundation
import Commons

enum LocalizedStrings: String {
    
    case imageGalleryTitle
    
    var localized: String {
        self.rawValue.localized()
    }
}
