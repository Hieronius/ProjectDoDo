//
//  BannerCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 09.07.2023.
//

import UIKit

final class BannerCell: UITableViewCell {
    
    // MARK: - Public Properties
    
    static var reuseID = "BannerCell"
    
    // MARK: - Private Properties
    
    private var container = UIView()
    private var bannerLable = UILabel()
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
    
    // MARK - Private Methods
    
    private func setupContainer() {
        
    }
    
    private func setupBannerLabel() {
        
    }
    
    private func setupBannerCollectionView() {
        
    }
}
