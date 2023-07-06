//
//  TableViewManager.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 06.07.2023.
//

import UIKit
import SnapKit

final class TableViewManager: UITableView {
    
    // MARK: - Public Properties
    
    var products: [Product] = [] {
        didSet {
            self.reloadData()
        }
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setupTableViewManager()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - TableViewManager settings

extension TableViewManager {
    private func setupTableViewManager() {
        
    }
}
