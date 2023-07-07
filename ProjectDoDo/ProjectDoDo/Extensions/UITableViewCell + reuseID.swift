//
//  UITableViewCell + reuseID.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 07.07.2023.
//

import UIKit

protocol Reusable {}

extension UITableViewCell: Reusable {}

/// Define a data type that conforms to the protocol in our case.
extension Reusable where Self: UITableViewCell {
    
    static var reuseID: String {
        return String.init(describing: self)
    }
}
