//
//  CollectionViewManager.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 01.07.2023.
//

import UIKit
import SnapKit

final class DetailCollectionViewManager: UICollectionView {
    
    // MARK: - Public Properties
    
    var ingredients: [Ingredient] = [] {
        didSet {
            self.reloadData()
        }
    }
    
    // MARK: - Initialization

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
         setupCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Private Methods

extension DetailCollectionViewManager {
    private func setupCollectionView() {
        dataSource = self
        delegate = self
        registerCell(PhotoCollectionCell.self)
    }
}

// MARK: - UICollectionViewDelegate

extension DetailCollectionViewManager: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ingredients.count
    }
}

// MARK: - UICollectionDataSource

extension DetailCollectionViewManager: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueCell(indexPath) as PhotoCollectionCell
        cell.backgroundColor = .yellow
        cell.layer.cornerRadius = 15
        cell.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        cell.layer.shadowRadius = 15
        cell.layer.shadowOpacity = 1
        cell.layer.shadowOffset = CGSize(width: 0, height: 15)
        cell.update(ingredients[indexPath.row])
        
        return cell
    }
}
