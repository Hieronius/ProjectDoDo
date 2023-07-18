//
//  CategoryCollectionViewCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 09.07.2023.
//

import UIKit

final class CategoryCollectionCell: UICollectionViewCell {
    
    // MARK: - Public Properties
    
    static let reuseID = "CategoryManagerCell"
    
    // MARK: - Private Properties
    
    private var categoryButton = UIButton()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCategoryButton()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Public Methods

extension CategoryCollectionCell {
    func update(_ category: Category) {
        categoryButton.setTitle("\(category.name)", for: .normal)
    }
}

// MARK: - Private Methods

extension CategoryCollectionCell {
    @objc private func categoryButtonTapped(sender: UIButton) {
        if !sender.isSelected {
            sender.setTitleColor(.brown, for: .selected)
            sender.backgroundColor = .orange.withAlphaComponent(0.1)
            sender.isSelected.toggle()

        } else {
            categoryButton.backgroundColor = .lightGray.withAlphaComponent(0.1)
            sender.isSelected.toggle()
        }
    }
}

// MARK: - UI and Constraints

extension CategoryCollectionCell {
    
    private func setupCategoryButton() {
        categoryButton.setTitle("Категория", for: .normal)
        categoryButton.setTitleColor(.gray, for: .normal)
        categoryButton.backgroundColor = .lightGray.withAlphaComponent(0.1)
        categoryButton.layer.cornerRadius = 20
        categoryButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 15, bottom: 5, right: 15)
        
        categoryButton.addTarget(self, action: #selector(categoryButtonTapped(sender:)), for: .touchUpInside)
        
        contentView.addSubview(categoryButton)
        
        categoryButton.snp.makeConstraints {
            $0.top.bottom.equalTo(contentView)
            $0.left.right.equalTo(contentView)
        }
    }
}
