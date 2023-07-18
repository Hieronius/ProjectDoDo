//
//  TableViewManager.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 06.07.2023.
//

import UIKit
import SnapKit


final class MenuTableViewManager: UITableView {
    
    // MARK: - Public Properties
    
    var products: [Product] = [] {
        didSet {
            self.reloadData()
        }
    }
    
    var banners: [Banner] = [] {
        didSet {
            self.reloadData()
        }
    }
    
    var categories: [Category] = [] {
        didSet {
            self.reloadData()
        }
    }
    
    // MARK: Private Properties
    
    private enum MenuSection: Int, CaseIterable {
        case banner
        case category
        case menu
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

extension MenuTableViewManager {
    private func setupTableViewManager() {
        dataSource = self
        delegate = self
        self.separatorStyle = .none
        registerCell(ProductCell.self)
        registerCell(BannerCell.self)
        registerCell(CategoryCell.self)
    }
}

// MARK: - UITableViewDelegate

extension MenuTableViewManager: UITableViewDelegate {
    
    func numberOfSections(in: UITableView) -> Int {
        return MenuSection.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let section = MenuSection.init(rawValue: section) // 0 -> MenuSection.banner
        
        switch section {
        case .banner:
            return 1
        case .category:
            return 1
        case .menu:
            return products.count
        default:
            return 1
        }
    }
}

// MARK: - UITableViewDataSource

extension MenuTableViewManager: UITableViewDataSource {
    
    #warning("Height of cell put to datasource methodm - tableViewHeightForRow")
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var section = MenuSection.init(rawValue: indexPath.section) // 0 -> MenuSection.banner

        switch section {
        case .banner:
            let cell = dequeueCell(indexPath) as BannerCell
            cell.contentView.heightAnchor.constraint(equalToConstant: 200).isActive = true
            cell.update(banners)
            return cell

        case .category:
            let cell = dequeueCell(indexPath) as CategoryCell
            cell.contentView.heightAnchor.constraint(equalToConstant: 60).isActive = true
//            cell.categoryCollectionView.categories = CategoryService().fetchCategories()
            cell.update(categories)
            return cell

        case .menu:
            let cell = dequeueCell(indexPath) as ProductCell
            let product = products[indexPath.row]
            cell.update(product)
            return cell

        default:
            return UITableViewCell()
        }
    }
}
