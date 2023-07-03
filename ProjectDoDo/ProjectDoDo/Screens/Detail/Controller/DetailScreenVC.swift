//
//  DetailScreenVC.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 30.06.2023.
//

import UIKit
import SnapKit

final class DetailScreenVC: UIViewController {
    
    // MARK: - Private Properties
    
     private let ingredientService = IngredientService()
    
    // MARK: - Lifecycle
    
    override func loadView() {
        view = DetailView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        useIngredientService()
        
    }
    // MARK: - Private Methods

    private func useIngredientService() {
        let view = view as! DetailView
        view.collectionView.ingredients = ingredientService.fetchIngredients()
    }
}



