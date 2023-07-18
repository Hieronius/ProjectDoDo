//
//  IngredientsService.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 02.07.2023.
//

import Foundation

final class IngredientService {
    
    let ingredients: [Ingredient] = [
        Ingredient(name: "Маринованные огурчики", price: 79, image: "cucumber", type: "ingredient", counter: 0),
        Ingredient(name: "Свежие томаты", price: 59, image: "tomato", type: "ingredient", counter: 0),
        Ingredient(name: "Сладкий перец", price: 59, image: "pepper", type: "ingredient", counter: 0),
        Ingredient(name: "Маринованные огурчики", price: 79, image: "cucumber", type: "ingredient", counter: 0),
        Ingredient(name: "Свежие томаты", price: 59, image: "tomato", type: "ingredient", counter: 0),
        Ingredient(name: "Сладкий перец", price: 59, image: "pepper", type: "ingredient", counter: 0),
        Ingredient(name: "Маринованные огурчики", price: 79, image: "cucumber", type: "ingredient", counter: 0),
        Ingredient(name: "Свежие томаты", price: 59, image: "tomato", type: "ingredient", counter: 0),
        Ingredient(name: "Сладкий перец", price: 59, image: "pepper", type: "ingredient", counter: 0),
        Ingredient(name: "Маринованные огурчики", price: 79, image: "cucumber", type: "ingredient", counter: 0),
        Ingredient(name: "Свежие томаты", price: 59, image: "tomato", type: "ingredient", counter: 0),
        Ingredient(name: "Сладкий перец", price: 59, image: "pepper", type: "ingredient", counter: 0)
    ]
    
    func fetchIngredients() -> [Ingredient] {
        return ingredients
    }
}
