//
//  CategoryService.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 13.07.2023.
//

import Foundation

final class CategoryService {
    
    let categories = ["Пицца", "Комбо", "Коктейли", "Кофе", "Закуски", "Десерты", "Напитки", "Соусы", "Другие товары"]
    
    func fetchCategories() -> [String] {
        return categories
    }
}
