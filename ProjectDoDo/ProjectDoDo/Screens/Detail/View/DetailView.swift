//
//  Controller.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 03.07.2023.
//

import UIKit

final class DetailView: UIView {
    
    // MARK: - Private Properties
    
    var collectionView: CollectionViewManager!
    
    var ingredients: [Ingredient] = [] {
        didSet{
            collectionView.reloadData()
        }
    }
    
    init() {
        super.init(frame: .zero)
        instantiateCollectionView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        
    }
    
    // MARK: - Private Methods
    
    private func instantiateCollectionView() {
        
        
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
        
        collectionView = CollectionViewManager(frame: self.bounds, collectionViewLayout: layout)
        collectionView.backgroundColor = .orange
        
        self.addSubview(collectionView)
        
        print("Current subviews of DetailView are - \(self.subviews)")
        print("Collection has been initialized")
    }
    
    private func setupConstraints() {
        self.collectionView.snp.makeConstraints { make in
            make.edges.equalTo(self.safeAreaLayoutGuide)
        }
        print("Constraints for Collection view has been initialized")
    }
    
}
