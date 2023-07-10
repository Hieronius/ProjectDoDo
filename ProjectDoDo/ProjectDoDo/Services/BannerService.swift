//
//  BannerService.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 10.07.2023.
//

import Foundation

final class BannerService {
    
    let products: [Product] = [
        Product(name: "Гавайская", price: 590, image: "hawaii"),
        Product(name: "Гавайская", price: 590, image: "hawaii"),
        Product(name: "Гавайская", price: 590, image: "hawaii"),
        Product(name: "Гавайская", price: 590, image: "hawaii")
    ]
    
    func fetchProducts() -> [Product] {
        return products
    }
}
