//
//  CategoryCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 09.07.2023.
//

import UIKit

final class CategoryCell: UITableViewCell {
    
    // MARK: - Public Properties
    
    static let reuseID = "CategoryCell"
    
    // MARK: - Private Properties
    
    private let container = UIView()
    private let categoryCollectionView = CategoryCollectionViewManager()
    
    // MARK: Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupContainer()
        setupCategoryCollectionView()
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
        container.backgroundColor = UIColor.yellow
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        container.heightAnchor.constraint(equalToConstant: 0.40 * height).isActive = true
        container.widthAnchor.constraint(equalToConstant: 0.40 * width).isActive = true
        contentView.addSubview(container)
    }
    
    private func setupCategoryCollectionView() {
        container.addSubview(categoryCollectionView)
    }
}
