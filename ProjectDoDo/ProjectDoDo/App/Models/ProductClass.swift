//
//  Product.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 30.06.2023.
//

import Foundation

class ProductClass {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Desert: ProductClass {
    
    override init(name: String) {
        super.init(name: name)
    }
}

let desert = Desert(name: "Napoleon")
