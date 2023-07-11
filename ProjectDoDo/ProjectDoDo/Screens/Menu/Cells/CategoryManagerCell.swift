//
//  CategoryCollectionViewCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 09.07.2023.
//

import UIKit

final class CategoryManagerCell: UICollectionViewCell {
    
    // MARK: Public Properties
    
    static let reuseID = "CategoryManagerCell"
    
    // MARK: Private Properties
    
    private var container = UIView()
    private var categoryLabel = UILabel()
    
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

extension CategoryManagerCell {
    func update() {
        
    }
}

// MARK: UI and Constraints

extension CategoryManagerCell {
    private func setupContainer() {
        container.backgroundColor = UIColor.green
        let height = UIScreen.main.bounds.height
        let width = UIScreen.main.bounds.width
//        container.heightAnchor.constraint(equalToConstant: 0.40 * height).isActive = true
//        container.widthAnchor.constraint(equalToConstant: 0.40 * width).isActive = true
        contentView.addSubview(container)
    }
    
    private func setupCategoryLabel() {
        categoryLabel.text = "Пицца"
        categoryLabel.font = UIFont.boldSystemFont(ofSize: 15)
        container.addSubview(categoryLabel)
    }
}
