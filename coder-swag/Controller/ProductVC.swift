//
//  ProductVC.swift
//  coder-swag
//
//  Created by Sultan Karybaev on 8/24/18.
//  Copyright © 2018 Sultan Karybaev. All rights reserved.
//

import UIKit

class ProductVC: UIViewController {
    
    @IBOutlet weak var collection: UICollectionView!
    
    var categoryTitle = ""
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        collection.dataSource = self
        collection.delegate = self
        products = DataService.instance.getPrjducts(forCategoryTitle: categoryTitle)
        navigationItem.title = categoryTitle
        navigationItem.backBarButtonItem?.title = ""
    }

}

extension ProductVC: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }
    
    
}
