//
//  DetailScreenVC.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 30.06.2023.
//

import UIKit
import SnapKit

final class DetailVC: UIViewController {
    
    private var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView()
        
        collectionView.backgroundColor = .orange
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - Extension UI and Constraints

extension DetailVC {
    private func setupViews() {
        view.addSubview(collectionView)
    }
    
    private func setupConstraints() {
        collectionView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
}
