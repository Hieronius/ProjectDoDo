//
//  MenuView.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 06.07.2023.
//

import UIKit

final class MenuView: UIView {
    
    // MARK: - Public Properties
    
    var tableView: MenuTableViewManager!
    
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
        tableView = MenuTableViewManager(frame: self.bounds, style: .plain)
        
        self.addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(safeAreaLayoutGuide)
        }
    }
    
}
