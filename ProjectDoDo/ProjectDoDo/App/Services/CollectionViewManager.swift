//
//  CollectionViewManager.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 01.07.2023.
//

import UIKit
import SnapKit

final class CollectionViewManager: UICollectionView {
    
    // MARK: - Private Properties
    
    var ingredients: [Ingredient] = [] {
        didSet {
            self.reloadData()
        }
    }
    
    // MARK: Initialization
    /// WIth this initializer we wan't define our DetailVC as "frame" for collectionView and layout as a private property of DetailVC
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
         setupCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCollectionView() {
        dataSource = self
        delegate = self
        register(PhotoCollectionCell.self, forCellWithReuseIdentifier: PhotoCollectionCell.reuseId)
    }
    
}

// MARK: - UICollectionViewDelegate

extension CollectionViewManager: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  ingredients.count
    }
}

// MARK: - UICollectionDataSource

extension CollectionViewManager: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionCell.reuseId, for: indexPath) as! PhotoCollectionCell
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
