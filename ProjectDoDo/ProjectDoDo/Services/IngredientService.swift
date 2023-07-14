//
//  IngredientsService.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 02.07.2023.
//

import Foundation

final class IngredientService {
    
    let ingredients: [Product] = [
        Product(name: "Маринованные огурчики", price: 79, image: "cucumber"),
        Product(name: "Свежие томаты", price: 59, image: "tomato"),
        Product(name: "Сладкий перец", price: 59, image: "pepper"),
        Product(name: "Маринованные огурчики", price: 79, image: "cucumber"),
        Product(name: "Свежие томаты", price: 59, image: "tomato"),
        Product(name: "Сладкий перец", price: 59, image: "pepper"),
        Product(name: "Маринованные огурчики", price: 79, image: "cucumber"),
        Product(name: "Свежие томаты", price: 59, image: "tomato"),
        Product(name: "Сладкий перец", price: 59, image: "pepper"),
        Product(name: "Маринованные огурчики", price: 79, image: "cucumber"),
        Product(name: "Свежие томаты", price: 59, image: "tomato"),
        Product(name: "Сладкий перец", price: 59, image: "pepper")
    ]
    
    func fetchIngredients() -> [Product] {
        return ingredients
    }
}
