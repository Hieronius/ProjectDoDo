//
//  UITableView + dequeueCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 07.07.2023.
//

 import UIKit

extension UITableView {
    func registerCell<Cell: UITableViewCell>(_ cellClass: Cell.Type) {
        register(cellClass, forCellReuseIdentifier: cellClass.reuseID)
    }

    func dequeueCell<Cell: UITableViewCell>(_ indexPath: IndexPath) -> Cell {
        guard let cell = self.dequeueReusableCell(withIdentifier: Cell.reuseID, for: indexPath) as? Cell
        else { fatalError("Fatal error for cell at \(indexPath)") }

        return cell
    }
}
