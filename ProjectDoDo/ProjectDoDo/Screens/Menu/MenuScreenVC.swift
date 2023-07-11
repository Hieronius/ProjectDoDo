//
//  ViewController.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 29.06.2023.
//

import UIKit
import SnapKit

final class MenuScreenVC: GenericViewController<MenuView> {
    
    // MARK: - Private Properties
    
    private var productService = ProductService()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getProducts()
    }
    
    // MARK: - Private Methods
    
    private func getProducts() {
        rootView.tableView.products = productService.fetchProducts()
    }
}
