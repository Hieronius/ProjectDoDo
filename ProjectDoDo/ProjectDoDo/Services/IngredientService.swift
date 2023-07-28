//
//  IngredientsService.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 02.07.2023.
//

import Foundation

final class IngredientService {
    
    // MARK: - Private Properties
    
    private let ingredients: [Ingredient] = [
        Ingredient(name: "Маринованные огурчики", price: 79, image: "cucumber", type: "ingredient", count: 0),
        Ingredient(name: "Свежие томаты", price: 59, image: "tomato", type: "ingredient", count: 0),
        Ingredient(name: "Сладкий перец", price: 59, image: "pepper", type: "ingredient", count: 0),
        Ingredient(name: "Маринованные огурчики", price: 79, image: "cucumber", type: "ingredient", count: 0),
        Ingredient(name: "Свежие томаты", price: 59, image: "tomato", type: "ingredient", count: 0),
        Ingredient(name: "Сладкий перец", price: 59, image: "pepper", type: "ingredient", count: 0),
        Ingredient(name: "Маринованные огурчики", price: 79, image: "cucumber", type: "ingredient", count: 0),
        Ingredient(name: "Свежие томаты", price: 59, image: "tomato", type: "ingredient", count: 0),
        Ingredient(name: "Сладкий перец", price: 59, image: "pepper", type: "ingredient", count: 0),
        Ingredient(name: "Маринованные огурчики", price: 79, image: "cucumber", type: "ingredient", count: 0),
        Ingredient(name: "Свежие томаты", price: 59, image: "tomato", type: "ingredient", count: 0),
        Ingredient(name: "Сладкий перец", price: 59, image: "pepper", type: "ingredient", count: 0)
    ]
    
    // MARK: - Public Methods
    
    func fetchIngredients() -> [Ingredient] {
        return ingredients
    }
}
