//
//  TableViewManager.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 06.07.2023.
//

import UIKit
import SnapKit

enum MenuSections: CaseIterable {
    case banners
    case categories
    case menu
}

final class TableViewManager: UITableView {
    
    // MARK: - Public Properties
    
    var products: [Product] = [] {
        didSet {
            self.reloadData()
        }
    }
    
    // MARK: - Initialization
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setupTableViewManager()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private Methods

extension TableViewManager {
    private func setupTableViewManager() {
        dataSource = self
        delegate = self
        self.separatorStyle = .none
        registerCell(ProductCell.self)
    }
}

// MARK: - TableViewManagerDelegate

extension TableViewManager: UITableViewDelegate {
    
    func numberOfSections(in: UITableView) -> Int {
        return MenuSections.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
}

// MARK: - TableViewManagerDataSource

extension TableViewManager: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let section = tableView.section[indexPath]
//
//        switch section {
//
//        }
        let cell = dequeueCell(indexPath) as ProductCell
        let product = products[indexPath.row]
        cell.update(product)
        return cell
    }
}
