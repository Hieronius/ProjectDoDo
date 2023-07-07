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
    
    // MARK: - Initialization
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setupTableViewManager()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private methods

extension TableViewManager {
    private func setupTableViewManager() {
        dataSource = self
        delegate = self
        register(ProductCell.self, forCellReuseIdentifier: ProductCell.reuseId)
    }
}

// MARK: - TableViewManagerDelegate

extension TableViewManager: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
}

// MARK: - TableViewManagerDataSource

extension TableViewManager: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProductCell.reuseId, for: indexPath) as! ProductCell
        let product = products[indexPath.row]
        cell.update(product)
        return cell
    }
}
