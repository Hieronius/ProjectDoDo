//
//  DetailVCBackup.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 02.07.2023.
//

import Foundation

//final class DetailVC: UIViewController {
//
//    private var collectionView: CollectionViewManager!
//
//    private let layout = UICollectionViewLayout()
//
//    private lazy var collectionView: UICollectionView = {
//
//        let itemsCount: CGFloat = 3
//        let padding: CGFloat = 10
//        let paddingCount: CGFloat = itemsCount + 1
//
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
//        layout.minimumLineSpacing = padding
//        layout.minimumInteritemSpacing = padding
//
//        let paddingSize = paddingCount * padding
//        let cellSize = (UIScreen.main.bounds.width - paddingSize) / itemsCount
//
//        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
//        layout.itemSize = CGSize.init(width: cellSize, height: 1.7 * cellSize)
//
//        let collectionView = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
//        collectionView.backgroundColor = .orange
//        collectionView.dataSource = self
//        collectionView.delegate = self
//
//        collectionView.register(PhotoCollectionCell.self, forCellWithReuseIdentifier: PhotoCollectionCell.reuseId)
//
//        return collectionView
//    }()
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        collectionView = CollectionViewManager(frame: view.bounds, collectionViewLayout: layout)
//        view.addSubview(collectionView)
//
//       setupViews()
//       setupConstraints()
//    }
//}

// MARK: - UI and Constraints

//extension DetailVC {
//    private func setupViews() {
//        view.addSubview(collectionView)
//    }
//
//    private func setupConstraints() {
//        collectionView.snp.makeConstraints { make in
//            make.edges.equalTo(view.safeAreaLayoutGuide)
//        }
//    }
//}

// MARK: - UICollectionViewDelegate

//extension DetailVC: UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 9
//    }
//}

// MARK: - UICollectionDataSource

//extension DetailVC: UICollectionViewDataSource {
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionCell.reuseId, for: indexPath) as! PhotoCollectionCell
//        cell.backgroundColor = .yellow
//        cell.layer.cornerRadius = 15
//        cell.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
//        cell.layer.shadowRadius = 15
//        cell.layer.shadowOpacity = 1
//        cell.layer.shadowOffset = CGSize(width: 0, height: 15)
//
//
//        return cell
//    }
//}