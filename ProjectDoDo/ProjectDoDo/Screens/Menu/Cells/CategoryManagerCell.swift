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
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}