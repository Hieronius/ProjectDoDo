//
//  BannerCollectionViewManager.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 08.07.2023.
//

import UIKit

final class BannerCollectionViewManager: UICollectionView {
    
    // MARK: - Public Properties
    
    var banners: [Product] = [] {
        didSet {
            self.reloadData()
            print("we have \(banners.count) banners on the screen")
        }
    }
    
    // MARK: - Initialization
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        setupCollectionView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Private Methods

extension BannerCollectionViewManager {
    private func setupCollectionView() {
        dataSource = self
        delegate = self
        registerCell(BannerManagerCell.self)
    }
}

// MARK: - BannerCollectionViewManagerDelegate

extension BannerCollectionViewManager: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return banners.count
    }
}

// MARK: - BannerCollectionViewManagerDataSource

// MARK: Start work here since 11.07.23
extension BannerCollectionViewManager: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueCell(indexPath) as BannerManagerCell
        cell.backgroundColor = .clear
        cell.layer.cornerRadius = 15
        cell.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        cell.layer.shadowRadius = 15
        cell.layer.shadowOpacity = 1
        cell.layer.shadowOffset = CGSize(width: 0, height: 15)
        cell.update(banners[indexPath.row])
        return cell
    }
}


