//
//  BannerCollectionViewManager.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 08.07.2023.
//

import UIKit

final class BannerCollectionViewManager: UICollectionView {
    
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
        
    }
}


