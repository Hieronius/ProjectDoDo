//
//  BannerCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 09.07.2023.
//

import UIKit

final class BannerCell: UICollectionViewCell {
    
    // MARK: - Public Properties
    
    static let reuseID = "BannerCell"
    
    // MARK: - Private Properties
    
    private var container = UIView()
    private var bannerLabel = UILabel()
    private var bannerCollectionView = BannerCollectionViewManager()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
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
    
// MARK: - UI and constraints
    
extension BannerCell {
    private func setupContainer() {
        container.backgroundColor = UIColor.red
        container.heightAnchor.constraint(equalToConstant: 150).isActive = true
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
    }
}
