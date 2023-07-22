//
//  CategoriesCollectionViewManager.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 09.07.2023.
//

import UIKit

final class CategoryCollectionViewManager: UICollectionView {
    
    // MARK: - Public Properties
    
    var categories: [Category] = [] {
        didSet {
            self.reloadData()
            print("categories have been reloaded")
        }
    }
    
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
        registerCell(CategoryCollectionCell.self)
    }
}

// MARK: - UICollectionViewDelegate

extension CategoryCollectionViewManager: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection: Int) -> Int {
        return categories.count
    }
}

// MARK: - UICollectionViewDataSource

extension CategoryCollectionViewManager: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueCell(indexPath) as CategoryCollectionCell
        cell.update(categories[indexPath.row])
        return cell
    }
}
