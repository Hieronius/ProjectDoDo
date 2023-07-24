//
//  BasketView.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 24.07.2023.
//

import UIKit

final class BasketView: UIView {
    
    // MARK: - Public Properties
    
     var tableView: BasketTableViewManager!
    
    // MARK: - Initialization
    
    init() {
        super.init(frame: .zero)
        setupTableView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Private Methods
    
    private func setupTableView() {
        tableView = BasketTableViewManager(frame: self.bounds, style: .plain)
        
        self.addSubview(tableView)
        
        tableView.snp.makeConstraints {
            $0.edges.equalTo(safeAreaLayoutGuide)
        }
    }
    
}
