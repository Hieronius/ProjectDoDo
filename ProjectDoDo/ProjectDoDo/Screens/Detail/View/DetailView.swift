//
//  Controller.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 03.07.2023.
//

import UIKit

final class MainView: UIView {
    
    // MARK: - Private Properties
    
    private var collectionView: CollectionViewManager!
    
    private var ingredients: [Ingredient] = [] {
        didSet{
            collectionView.reloadData()
        }
    }
    
    init() {
        super.init(frame: .zero)
        instantiateCollectionView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    // MARK: - Private Methods
    
    private func instantiateCollectionView() {
        let layout = UICollectionViewLayout()
        collectionView = CollectionViewManager(frame: superview!.bounds, collectionViewLayout: layout)
        superview?.addSubview(collectionView)
        superview?.addSubview(collectionView)
    }
}
