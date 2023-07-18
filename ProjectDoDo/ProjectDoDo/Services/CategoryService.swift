//
//  CategoryService.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 13.07.2023.
//

import Foundation

final class CategoryService {
    
    // MARK: - Private Properties
    
    private let categories: [Category] = [
        Category(name: "Пицца", type: "category"),
        Category(name: "Комбо", type: "category"),
        Category(name: "Кофе", type: "category"),
        Category(name: "Закуски", type: "category"),
        Category(name: "Десерты", type: "category"),
        Category(name: "Напитки", type: "category"),
        Category(name: "Соусы", type: "category"),
        Category(name: "Другие товары", type: "category")
    ]
    
    // MARK: Public Methods
    
    func fetchCategories() -> [Category] {
        return categories
    }
}
