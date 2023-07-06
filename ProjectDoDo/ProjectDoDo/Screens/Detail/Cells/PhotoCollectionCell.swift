//
//  PhotoCollectionCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 30.06.2023.
//

import UIKit

final class PhotoCollectionCell: UICollectionViewCell {
    
    // MARK: - Public Properties
    
    static let reuseId = "PhotoCollectionCell"
    
    // MARK: - Private Properties
    
    private var photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        imageView.image = UIImage.init(named: "cucumber")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 15
        imageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Маринованные огурчики"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.numberOfLines = 2
        label.textAlignment = .center
        
        return label
    }()
    
    private var priceLabel: UILabel = {
        let label = UILabel()
        label.text = "79р"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        
        return label
    }()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Update Data

extension PhotoCollectionCell {
    func update(_ product: Ingredient) {
        nameLabel.text = product.name
        priceLabel.text = "\(product.priceLabel) р"
        photoImageView.image = UIImage(named: product.image)
    }
}

// MARK: - UI and constraints

extension PhotoCollectionCell {
    private func setupViews() {
        contentView.addSubview(photoImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(priceLabel)
    }
    
    private func setupConstraints() {
        photoImageView.snp.makeConstraints { make in
             make.top.equalTo(contentView)
             make.left.right.equalTo(contentView)
        }
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(photoImageView.snp.bottom).offset(10)
            make.left.right.equalTo(contentView)
        }
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(10)
            make.left.right.equalTo(contentView)
        }
    }
}
