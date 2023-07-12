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
    
}
    
// MARK: - Public Methods

extension BannerCell {
    func update(_ banner: Product) {
        let banners = BannerService().fetchProducts()
        
        
    }
}
    
// MARK: - UI and Constraints
    
extension BannerCell {
    private func setupContainer() {
        container.backgroundColor = UIColor.blue
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        // MARK: FIRST PROBLEM WITH CONSTRAINTS BELOW:
        container.translatesAutoresizingMaskIntoConstraints = false
         container.heightAnchor.constraint(equalToConstant: 180).isActive = true
          //container.widthAnchor.constraint(equalToConstant: 200).isActive = true
        contentView.addSubview(container)
    
        
        container.snp.makeConstraints { make in
             make.top.equalTo(contentView).inset(10)
             make.bottom.equalTo(contentView).inset(10)
            make.left.equalTo(contentView)
            make.right.equalTo(contentView)
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
        bannerCollectionView.backgroundColor = .green
        container.addSubview(bannerCollectionView)
        
        bannerCollectionView.snp.makeConstraints {
            // MARK: THIS CONSTRAINT SHOULD CONNECT BOTTOM ANCHOR OF THE LABEL TO THE TOP ANCHOR OF THE COLLECTION VIEW BUT DOESN'T WORK
             $0.top.equalTo(bannerLabel.snp.bottom).offset(10)
            $0.left.right.bottom.equalTo(container).inset(10)
        }
    }
}
//
