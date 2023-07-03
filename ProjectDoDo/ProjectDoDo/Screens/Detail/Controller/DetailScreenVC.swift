//
//  DetailScreenVC.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 30.06.2023.
//

import UIKit
import SnapKit

final class DetailScreenVC: GenericViewController<DetailView> {
    
    // MARK: - Private Properties
    
     private let ingredientService = IngredientService()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getIngredients()
    }
    
    // MARK: - Private Methods

    private func getIngredients() {
        rootView.collectionView.ingredients = ingredientService.fetchIngredients()
    }
}



