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
            Task {
                self.reloadData()
             }
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

extension BannerCollectionViewManager: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueCell(indexPath) as BannerManagerCell
        cell.backgroundColor = .clear
        cell.layer.cornerRadius = 10
        cell.update(banners[indexPath.row])
        return cell
    }
}

// MARK: BannerCollectionViewManagerDelegateFlowLayout

extension BannerCollectionViewManager: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.75, height: collectionView.frame.height - 15)
    }
}


