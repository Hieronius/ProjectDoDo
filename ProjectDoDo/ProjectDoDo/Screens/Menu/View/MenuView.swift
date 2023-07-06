//
//  MenuView.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 06.07.2023.
//

import UIKit

final class MenuView: UIView {
    
    // MARK: - Public Properties
    
    var tableView: TableViewManager!
    
    // MARK: - Initialization
    
    init() {
        super.init(frame: .zero)
        instantiateTableView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func instantiateTableView() {
        tableView = TableViewManager(frame: self.bounds, style: .plain)
        self.addSubview(tableView)
    }
    
    private func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(safeAreaLayoutGuide)
        }
    }
}
