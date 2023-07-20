//
//  CustomCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 30.06.2023.
//

import UIKit

final class ProductTableCell: UITableViewCell {
    
    // MARK: - Public Properties
    
    static let reuseID = "ProductCell"
    
    // MARK: - Private Properties
    
    private var verticalStackView = UIStackView()
    private var nameLabel = UILabel()
    private var detailLabel = UILabel()
    private var priceButton = UIButton()
    private var productImageView = UIImageView()
    
    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupProductImageView()
        setupVerticalStackView()
        setupNameLabel()
        setupDetailLabel()
        setupPriceButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Public methods

extension ProductTableCell {
    func update(_ product: Product) {
        nameLabel.text = product.name
        detailLabel.text = product.detail
        priceButton.setTitle("\(product.price) р", for: .normal)
        productImageView.image = UIImage(named: product.image)
    }
}

// MARK: - UI and Constraints

extension ProductTableCell {
    private func setupVerticalStackView() {
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 15
        verticalStackView.alignment = .leading
        
        verticalStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 10, leading: 15, bottom: 12, trailing: 0)
        verticalStackView.isLayoutMarginsRelativeArrangement = true
        
        contentView.addSubview(verticalStackView)
        
        verticalStackView.snp.makeConstraints {
            $0.top.right.bottom.equalTo(contentView).inset(10)
            $0.left.equalTo(productImageView.snp.right).offset(10)
        }
    }
    
    private func setupNameLabel() {
        nameLabel.text = "Пепперони"
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
        verticalStackView.addArrangedSubview(nameLabel)
    }
    
    private func setupDetailLabel() {
        detailLabel.text = "Тесто, Цыпленок, моцарелла, томатный соус"
        detailLabel.textColor = .darkGray
        detailLabel.numberOfLines = 0
        detailLabel.font = UIFont.boldSystemFont(ofSize: 15)
        
        verticalStackView.addArrangedSubview(detailLabel)
    }
    
    private func setupPriceButton() {
        priceButton.setTitle("От 469 руб", for: .normal)
        priceButton.backgroundColor = .orange.withAlphaComponent(0.1)
        priceButton.layer.cornerRadius = 20
        priceButton.setTitleColor(.brown, for: .normal)
        priceButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        
        verticalStackView.addArrangedSubview(priceButton)
    }
    
    private func setupProductImageView() {
        productImageView.image = UIImage(named: "pepperoni")
        productImageView.contentMode = .scaleAspectFill
        let width = UIScreen.main.bounds.width
        productImageView.heightAnchor.constraint(equalToConstant: 0.40 * width).isActive = true
        productImageView.widthAnchor.constraint(equalToConstant: 0.40 * width).isActive = true
        
        contentView.addSubview(productImageView)
        
        productImageView.snp.makeConstraints {
            $0.left.equalTo(contentView).offset(10)
            $0.centerY.equalTo(contentView)
        }
    }
    
}

