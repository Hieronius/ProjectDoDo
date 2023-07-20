//
//  BannerCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 09.07.2023.
//

import UIKit

final class BannerTableCell: UITableViewCell {
    
    // MARK: - Public Properties
    
    static let reuseID = "BannerCell"
    
    var container = UIView()
    var bannerLabel = UILabel()
    var bannerCollectionView: BannerCollectionViewManager!
    
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
    
    //MARK: - Public
    
    func update(_ banners: [Banner]) {
         bannerCollectionView.banners = banners
    }

}

// MARK: - UI and Constraints

extension BannerTableCell {
    private func setupContainer() {
        contentView.addSubview(container)
        
        container.snp.makeConstraints {
            $0.top.equalTo(contentView).inset(10)
            $0.bottom.equalTo(contentView).inset(10)
            $0.left.equalTo(contentView)
            $0.right.equalTo(contentView)
        }
    }
    
    private func setupBannerLabel() {
        bannerLabel.text = "Выгодно и вкусно"
        bannerLabel.font = UIFont.boldSystemFont(ofSize: 20)
        container.addSubview(bannerLabel)
        
        bannerLabel.snp.makeConstraints {
            $0.top.equalTo(container).inset(10)
            $0.left.equalTo(container).inset(15)
        }
        
    }
    
    private func setupBannerCollectionView() {
        
        let itemsCount: CGFloat = 1
        let padding: CGFloat = 5
        let paddingCount: CGFloat = itemsCount + 1
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = padding
        layout.minimumInteritemSpacing = padding
        
        let paddingSize = paddingCount * padding
        let cellSize = (UIScreen.main.bounds.width - paddingSize) / itemsCount
        
        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        layout.itemSize = CGSize.init(width: 0.3 * cellSize, height: 0.3 * cellSize)
        
        bannerCollectionView = BannerCollectionViewManager(frame: self.bounds, collectionViewLayout: layout)
        bannerCollectionView.showsHorizontalScrollIndicator = false
        container.addSubview(bannerCollectionView)
        
        bannerCollectionView.snp.makeConstraints {
            $0.top.equalTo(bannerLabel.snp.bottom).offset(10)
            $0.left.right.bottom.equalTo(container)
        }
    }
}
