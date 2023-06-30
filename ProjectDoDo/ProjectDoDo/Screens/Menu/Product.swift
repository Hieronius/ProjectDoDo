//
//  Product.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 30.06.2023.
//

import Foundation

class Product {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Desert: Product {
    
    override init(name: String) {
        super.init(name: name)
    }
}

let desert = Desert(name: "Napoleon")
