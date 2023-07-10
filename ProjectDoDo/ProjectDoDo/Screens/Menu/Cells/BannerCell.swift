//
//  BannerCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 09.07.2023.
//

import UIKit

final class BannerCell: UITableViewCell {
    
    // MARK: - Public Properties
    
    static let reuseID = "BannerCell"
    
    // MARK: - Private Properties
    
    private var container = UIView()
    private var bannerLabel = UILabel()
    private var bannerCollectionView = BannerCollectionViewManager()
    
    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupContainer()
        setupBannerLabel()
        setupBannerCollectionView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
    
// MARK: - Public Methods

extension BannerCell {
    func update() {
        
    }
}
    
// MARK: - UI and Constraints
    
extension BannerCell {
    private func setupContainer() {
        container.backgroundColor = UIColor.red
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        container.heightAnchor.constraint(equalToConstant: 0.40 * height).isActive = true
        container.widthAnchor.constraint(equalToConstant: 0.40 * width).isActive = true
        container.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(container)
    }

    private func setupBannerLabel() {
        bannerLabel.text = "Выгодно и вкусно"
        bannerLabel.font = UIFont.boldSystemFont(ofSize: 30)
        container.addSubview(bannerLabel)
        
    }
    
    private func setupBannerCollectionView() {
        container.addSubview(bannerCollectionView)
        // constraints for BannerCollectionView here
    }
}
