//
//  BannerManagerCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 09.07.2023.
//

import UIKit

final class BannerManagerCell: UICollectionViewCell {
    
    // MARK: Public Properties
    
    static let reuseID = "BannerManagerCell"
    
    // MARK: Private Properties
    
    private var container = UIView()
    private var productLabel = UILabel()
    private var priceLabel = UILabel()
    private var productImage = UIImageView()
    
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        setupContainer()
        setupProductLabel()
        setupPriceLabel()
        setupProductImage()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: Public Methods

extension BannerManagerCell {
    func update() {
        
    }
}

// MARK: UI and Constraints

extension BannerManagerCell {
    private func setupContainer() {
        container.backgroundColor = UIColor.blue
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        container.heightAnchor.constraint(equalToConstant: 0.40 * height).isActive = true
        container.widthAnchor.constraint(equalToConstant: 0.40 * width).isActive = true
        contentView.addSubview(container)
    }
    
    private func setupProductLabel() {
        productLabel.text = "Пицца"
        productLabel.font = UIFont.boldSystemFont(ofSize: 15)
        container.addSubview(productLabel)
    }
    
    private func setupPriceLabel() {
        priceLabel.text = "599"
        priceLabel.font = UIFont.boldSystemFont(ofSize: 20)
        container.addSubview(priceLabel)
    }
    
    private func setupProductImage() {
        productImage.image = UIImage.init(named: "margarita")
        container.addSubview(productImage)
    }
}
