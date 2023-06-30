//
//  DetailScreenVC.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 30.06.2023.
//

import UIKit
import SnapKit

final class DetailVC: UIViewController {
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        
        collectionView.backgroundColor = .orange
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(PhotoCollectionCell.self, forCellWithReuseIdentifier: PhotoCollectionCell.reuseId)
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
}

// MARK: - UI and Constraints

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

// MARK: - UICollectionViewDelegate

extension DetailVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
}

// MARK: - UICollectionDataSource

extension DetailVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionCell.reuseId, for: indexPath) as! PhotoCollectionCell
        cell.backgroundColor = .yellow
        return cell
    }
}
