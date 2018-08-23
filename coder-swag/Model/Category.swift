//
//  Category.swift
//  coder-swag
//
//  Created by Sultan Karybaev on 8/23/18.
//  Copyright © 2018 Sultan Karybaev. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String
    private(set) public var image: String
    
    init(title: String, image: String) {
        self.title = title
        self.image = image
    }
    
}
