//
//  Controller.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 03.07.2023.
//

import UIKit

final class DetailView: UIView {
    
    // MARK: - Public Properties
    
    var collectionView: DetailCollectionViewManager!
    
    // MARK: - Initialisation
    
    init() {
        super.init(frame: .zero)
        setupCollectionView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Private Methods
    
    private func setupCollectionView() {
        let itemsCount: CGFloat = 3
        let padding: CGFloat = 10
        let paddingCount: CGFloat = itemsCount + 1
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = padding
        layout.minimumInteritemSpacing = padding
        
        let paddingSize = paddingCount * padding
        let cellSize = (UIScreen.main.bounds.width - paddingSize) / itemsCount
        
        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        layout.itemSize = CGSize.init(width: cellSize, height: 1.7 * cellSize)
        
        collectionView = DetailCollectionViewManager(frame: self.bounds, collectionViewLayout: layout)
        collectionView.backgroundColor = .orange
        
        self.addSubview(collectionView)
        
        self.collectionView.snp.makeConstraints {
            $0.edges.equalTo(self.safeAreaLayoutGuide)
        }
    }
   
}
