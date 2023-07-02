//
//  IngredientsService.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 02.07.2023.
//

import Foundation

final class IngredientService {
    
    private let ingredients: [Ingredient] = [
        Ingredient(name: "Маринованные огурчики", price: "79р", image: "cucumber"),
        Ingredient(name: "Свежие томаты", price: "59р", image: "tomato"),
        Ingredient(name: "Сладкий перец", price: "59р", image: "pepper")
    ]
    
    private func fetchIngredients() -> [Ingredient] {
        return ingredients
    }
}
