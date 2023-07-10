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
    
    private var container = UIView()
    private var categoryCollectionView: CategoryCollectionViewManager!
    
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
        print("Hello")
    }
}

// MARK: UI and Constraints

extension CategoryCell {
    private func setupContainer() {
        container.backgroundColor = UIColor.clear
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        container.heightAnchor.constraint(equalToConstant: 0.40 * height).isActive = true
        container.widthAnchor.constraint(equalToConstant: 0.40 * width).isActive = true
        contentView.addSubview(container)
    }
    
    private func setupCategoryCollectionView() {
        
        let itemsCount: CGFloat = 1
        let padding: CGFloat = 10
        let paddingCount: CGFloat = itemsCount + 1
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = padding
        layout.minimumInteritemSpacing = padding
        
        let paddingSize = paddingCount * padding
        let cellSize = (UIScreen.main.bounds.width - paddingSize) / itemsCount
        
        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        layout.itemSize = CGSize.init(width: cellSize, height: 1.7 * cellSize)
        
        categoryCollectionView = CategoryCollectionViewManager(frame: self.bounds, collectionViewLayout: layout)
        categoryCollectionView.backgroundColor = .clear
        
        container.addSubview(categoryCollectionView)
    }
}
