//
//  UICollectionView + reuseID.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 07.07.2023.
//

import UIKit

extension UICollectionViewCell: Reusable {}

extension Reusable where Self: UICollectionViewCell {
    
    static var reuseID: String {
        return String.init(describing: self)
    }
}
