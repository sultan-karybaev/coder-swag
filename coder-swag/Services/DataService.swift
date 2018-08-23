//
//  DataService.swift
//  coder-swag
//
//  Created by Sultan Karybaev on 8/23/18.
//  Copyright © 2018 Sultan Karybaev. All rights reserved.
//

import Foundation

//Singleton
class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", image: "shirts.png"),
        Category(title: "HOODIES", image: "hoodies.png"),
        Category(title: "HATS", image: "hats.png"),
        Category(title: "DIGITAL", image: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
