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
    private var categoryButton = UIButton()
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupContainer()
        setupCategoryButton()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Public Methods

extension CategoryManagerCell {
    func update(_ category: String) {
        print("this category has been updated")
        categoryButton.setTitle("\(category)", for: .normal)
    }
}

// MARK: UI and Constraints

extension CategoryManagerCell {
    private func setupContainer() {
        contentView.backgroundColor = .clear
        contentView.addSubview(container)
        
        container.snp.makeConstraints {
            $0.top.bottom.equalTo(contentView).inset(10)
            $0.left.right.equalTo(contentView).inset(30)
        }
        
    }
    
    private func setupCategoryButton() {
        categoryButton.setTitle("Категория", for: .normal)
        categoryButton.backgroundColor = .orange.withAlphaComponent(0.1)
        categoryButton.layer.cornerRadius = 20
        categoryButton.setTitleColor(.brown, for: .normal)
        // categoryButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        
        container.addSubview(categoryButton)
        
        categoryButton.snp.makeConstraints {
            // $0.edges.equalTo(container)
//            $0.left.equalTo(container.snp.left)
//            $0.right.equalTo(container.snp.right)
            $0.top.bottom.equalTo(container)
            $0.left.right.equalTo(container)
        }
    }
}
