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
    
    var container = UIView()
    var categoryCollectionView: CategoryCollectionViewManager!
    
    // MARK: Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupContainer()
        setupCategoryCollectionView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Public Methods
    
    func update(_ categories: [Category]) {
         categoryCollectionView.categories = categories
    }
    
}

// MARK: UI and Constraints

extension CategoryCell {
    private func setupContainer() {
        contentView.addSubview(container)
        
        container.snp.makeConstraints {
            $0.edges.equalTo(contentView)
        }
    }
    
    private func setupCategoryCollectionView() {
        
        let itemsCount: CGFloat = 1
        let padding: CGFloat = 5
        let paddingCount: CGFloat = itemsCount + 1
        
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = padding
        layout.minimumInteritemSpacing = padding
        
        let paddingSize = paddingCount * padding
        let cellSize = (UIScreen.main.bounds.width - paddingSize) / itemsCount
        
        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        layout.itemSize = CGSize.init(width: 0.3 * cellSize, height: 0.3 * cellSize)
        
        categoryCollectionView = CategoryCollectionViewManager(frame: self.bounds, collectionViewLayout: layout)
        
        categoryCollectionView.showsHorizontalScrollIndicator = false
        
        container.addSubview(categoryCollectionView)
        
        categoryCollectionView.snp.makeConstraints {
            $0.top.bottom.equalTo(container)
            $0.left.right.equalTo(container)
        }
    }
}
