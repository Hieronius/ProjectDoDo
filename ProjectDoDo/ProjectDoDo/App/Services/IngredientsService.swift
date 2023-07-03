//
//  IngredientsService.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 02.07.2023.
//

import Foundation

final class IngredientService {
    
    let ingredients: [Ingredient] = [
        Ingredient(name: "Маринованные огурчики", priceLabel: 79, image: "cucumber"),
        Ingredient(name: "Свежие томаты", priceLabel: 59, image: "tomato"),
        Ingredient(name: "Сладкий перец", priceLabel: 59, image: "pepper"),
        Ingredient(name: "Маринованные огурчики", priceLabel: 79, image: "cucumber"),
        Ingredient(name: "Свежие томаты", priceLabel: 59, image: "tomato"),
        Ingredient(name: "Сладкий перец", priceLabel: 59, image: "pepper")
    ]
    
    func fetchIngredients() -> [Ingredient] {
        print("Data has been passed")
        return ingredients
    }
}
