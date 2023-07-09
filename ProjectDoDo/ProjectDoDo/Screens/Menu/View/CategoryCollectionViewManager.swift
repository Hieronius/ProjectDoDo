//
//  CategoriesCollectionViewManager.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 09.07.2023.
//

import UIKit

final class CategoryCollectionViewManager: UICollectionView {
    
    // MARK: - Initialization
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout ) {
        super.init(frame: frame, collectionViewLayout: layout)
        setupCollectionView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private Methods

extension CategoryCollectionViewManager {
    private func setupCollectionView() {
        dataSource = self
        delegate = self
        registerCell(CategoryManagerCell.self)
    }
}

// MARK: - CategoryCollectionViewManagerDelegate

extension CategoryCollectionViewManager: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection: Int) -> Int {
        return 1
    }
}

// MARK: - CategoryCollectionViewManagerDataSource

extension CategoryCollectionViewManager: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueCell(indexPath) as CategoryManagerCell
        return cell
    }
}


