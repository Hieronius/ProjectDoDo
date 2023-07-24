//
//  BasketTableViewManager.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 24.07.2023.
//

import UIKit
import SnapKit

final class BasketTableViewManager: UITableView {
    
    // MARK: - Public Properties
    
    var basket: [Any] = [] {
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

extension BasketTableViewManager {
    private func setupTableViewManager() {
        dataSource = self
        delegate = self
        // self.separatorStyle = .none
        // registerCell(BasketTableCell.self)
    }
}

// MARK: - UITableViewDelegate

extension BasketTableViewManager: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basket.count
    }
}

// MARK: UITableViewManagerDataSource

extension BasketTableViewManager: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = dequeueCell(indexPath) as BasketTableCell
        let product = basket[indexPath.row]
        cell.update(product)
        return cell
    }
}

