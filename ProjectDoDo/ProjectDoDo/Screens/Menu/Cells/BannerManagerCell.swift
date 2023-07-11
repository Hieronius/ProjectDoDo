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
    func update(_ product: Product) {
        productLabel.text = product.name
        priceLabel.text = "\(product.price) р"
        productImage.image = UIImage(named: product.image)
        print(productLabel.text)
        print(productLabel.text)
        print(priceLabel.text)
        print(priceLabel.text)
    }
}

// MARK: UI and Constraints

extension BannerManagerCell {
    private func setupContainer() {
        container.backgroundColor = UIColor.red
        container.translatesAutoresizingMaskIntoConstraints = false
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        container.heightAnchor.constraint(equalToConstant: 0.70 * height).isActive = true
         container.widthAnchor.constraint(equalToConstant: 0.70 * width).isActive = true
        contentView.addSubview(container)
        
        // MARK: STILL AN ERROR WITH CONSTRAINTS
        container.snp.makeConstraints { make in
            make.edges.equalTo(contentView).inset(10)
        }
    }
    
    private func setupProductLabel() {
        productLabel.text = "Пицца"
        productLabel.font = UIFont.boldSystemFont(ofSize: 15)
        // productLabel.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(productLabel)
        
        productLabel.snp.makeConstraints { make in
            make.top.equalTo(container).inset(5)
        }
    }
    
    private func setupPriceLabel() {
        priceLabel.text = "599"
        priceLabel.font = UIFont.boldSystemFont(ofSize: 20)
        container.addSubview(priceLabel)
        
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(productLabel).inset(10)
        }
    }
    
    private func setupProductImage() {
        productImage.image = UIImage.init(named: "margarita")
         productImage.contentMode = .scaleAspectFit
        let width = UIScreen.main.bounds.width
        productImage.heightAnchor.constraint(equalToConstant: 0.20 * width).isActive = true
        productImage.widthAnchor.constraint(equalToConstant: 0.20 * width).isActive = true
        container.addSubview(productImage)
        
        productImage.snp.makeConstraints { make in
            make.left.equalTo(container)
            make.top.equalTo(container)
        }
    }
}
