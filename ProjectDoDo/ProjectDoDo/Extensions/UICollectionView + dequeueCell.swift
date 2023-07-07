//
//  UICollectionView + dequeueCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 07.07.2023.
//

import UIKit

extension UICollectionView {
    func registerCell<Cell: UICollectionViewCell>(_ cellClass: Cell.Type) {
        register(cellClass, forCellWithReuseIdentifier: cellClass.reuseID)
    }
    
    func dequeueCell<Cell: UICollectionViewCell>(_ indexPath: IndexPath) -> Cell {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: Cell.reuseID, for: indexPath) as? Cell
        else { fatalError("Fatal error for cell at \(indexPath)") }
        
        return cell
    }
}
