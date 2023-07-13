//
//  BannerService.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 10.07.2023.
//

import Foundation

final class BannerService {
    
    let products: [Product] = [
        Product(name: "Бруслетики", price: 230, image: "Бруслетики"),
        Product(name: "Пепперони фреш", price: 299, image: "Пепперони фреш"),
        Product(name: "3 пиццы", price: 1099, image: "3 пиццы"),
        Product(name: "Додстер", price: 169, image: "Додстер"),
        Product(name: "Комбо от 599 Р", price: 599, image: "Комбо от 599 Р"),
        Product(name: "2 соуса", price: 75, image: "2 соуса")
    ]
    
    func fetchProducts() -> [Product] {
        return products
    }
}
