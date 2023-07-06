//
//  ProductService.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 30.06.2023.
//

import Foundation

protocol ProductServiceProtocol {
    func fetchProducts() -> [Product]
}

final class ProductService: ProductServiceProtocol {
    
    let products: [Product] = [
    Product(name: "Гавайская", detail: "Тесто, Сыр, Буженина", price: 590, image: "hawaii"),
    Product(name: "Маргарита", detail: "Тесто, Сыр, Колбаска", price: 650, image: "margarita"),
    Product(name: "Пепперони", detail: "Тесто, Сыр, Перец, Томат, Лук", price: 710, image: "pepperoni")
    ]
    
    func fetchProducts() -> [Product] {
        return products
    }
}
