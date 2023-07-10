//
//  CategoryCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 09.07.2023.
//

import UIKit

final class CategoryCell: UICollectionViewCell {
    
    // MARK: - Public Properties
    
    static let reuseID = "CategoryCell"
    
    // MARK: - Private Properties
    
    private let container = UIView()
    private let categoryLabel = UILabel()
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupContainer()
        setupCategoryLabel()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: Public Methods

extension CategoryCell {
    func update() {
        
    }
}

// MARK: UI and Constraints

extension CategoryCell {
    private func setupContainer() {
        
    }
    
    private func setupCategoryLabel() {
        
    }
}
