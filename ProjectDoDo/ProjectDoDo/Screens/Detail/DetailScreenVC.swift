//
//  DetailScreenVC.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 30.06.2023.
//

import UIKit
import SnapKit

final class DetailVC: UIViewController {
    
    // MARK: - Private Properties
    
    private var collectionView: CollectionViewManager!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        instantiateCollectionView()
    }
    
    // MARK: - Private Methods
    
    private func instantiateCollectionView() {
        let layout = UICollectionViewLayout()
        collectionView = CollectionViewManager(frame: view.bounds, collectionViewLayout: layout)
        view.addSubview(collectionView)
    }
}



