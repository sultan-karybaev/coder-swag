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
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$22", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$22", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$20", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$22", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$20", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getPrjducts(forCategoryTitle title: String) -> [Product] {
        switch title {
            case "SHIRTS": return shirts
            case "HOODIES": return hoodies
            case "HATS": return hats
            case "DIGITAL": return digitalGoods
            default: return digitalGoods
        }
    }
}











