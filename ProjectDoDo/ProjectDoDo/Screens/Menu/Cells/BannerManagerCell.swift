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
        contentView.addSubview(container)
        
        container.snp.makeConstraints {
            $0.edges.equalTo(contentView)
        }
    }
    
    private func setupProductImage() {
        productImage.image = UIImage.init(named: "margarita")
        productImage.contentMode = .scaleAspectFit
        let width = UIScreen.main.bounds.width
        productImage.widthAnchor.constraint(equalToConstant: 0.25 * width).isActive = true
        container.addSubview(productImage)
        
        productImage.snp.makeConstraints {
            $0.left.equalTo(container)
            $0.top.equalTo(container)
            $0.bottom.equalTo(container)
        }
    }
    
    private func setupProductLabel() {
        productLabel.text = "Пицца"
        productLabel.font = UIFont.boldSystemFont(ofSize: 15)
        // productLabel.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(productLabel)
        
        productLabel.snp.makeConstraints {
            $0.top.equalTo(container).inset(5)
            $0.left.equalTo(productImage).inset(5)
        }
    }
    
    private func setupPriceLabel() {
        priceLabel.text = "599"
        priceLabel.font = UIFont.boldSystemFont(ofSize: 20)
        container.addSubview(priceLabel)
        
        priceLabel.snp.makeConstraints {
            $0.top.equalTo(productLabel).inset(10)
        }
    }
    
}
