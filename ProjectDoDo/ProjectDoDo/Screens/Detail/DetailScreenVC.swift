//
//  DetailScreenVC.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 30.06.2023.
//

import UIKit
import SnapKit

final class DetailVC: UIViewController {
    
    private var collectionView: CollectionViewManager!
    
    private let layout = UICollectionViewLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView = CollectionViewManager(frame: view.bounds, collectionViewLayout: layout)
        view.addSubview(collectionView)
    }
}

// MARK: - UI and Constraints

