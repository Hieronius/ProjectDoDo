//
//  CustomCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 30.06.2023.
//

import UIKit

final class ProductCell: UITableViewCell {
    
    // MARK: - Public Properties
    
    static let reuseId = "ProductCell"
    
    // MARK: - Private Properties
    
    private var verticalStackView: UIStackView = {
        var stackView = UIStackView.init()
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.alignment = .leading
        
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 10, leading: 15, bottom: 12, trailing: 0)
        stackView.isLayoutMarginsRelativeArrangement = true
        return stackView
    }()
    
    private var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Пепперони"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private var detailLabel: UILabel = {
        var label = UILabel()
        label.text = "Тесто, Цыпленок, моцарелла, томатный соус"
        label.textColor = .darkGray
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    private var priceButton: UIButton = {
        var button = UIButton()
        button.setTitle("От 469 руб", for: .normal)
        button.backgroundColor = .orange.withAlphaComponent(0.1)
        button.layer.cornerRadius = 20
        button.setTitleColor(.brown, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        return button
    }()
    
    private var productImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "pepperoni")
        imageView.contentMode = .scaleAspectFill
        let width = UIScreen.main.bounds.width
        imageView.heightAnchor.constraint(equalToConstant: 0.40 * width).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 0.40 * width).isActive = true
        return imageView
        
    }()
    
    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
    
// MARK: - Update Data
extension ProductCell {
    /// Passing product to the cell.
    func update(_ product: Product) {
        nameLabel.text = product.name
        detailLabel.text = product.detail
        priceButton.setTitle("\(product.price) р", for: .normal)
        productImageView.image = UIImage(named: product.image)
    }
}

// MARK: - UI and constraints

extension ProductCell {
    private func setupViews() {
        contentView.addSubview(productImageView)
        contentView.addSubview(verticalStackView)
        verticalStackView.addArrangedSubview(nameLabel)
        verticalStackView.addArrangedSubview(detailLabel)
        verticalStackView.addArrangedSubview(priceButton)
    }
    
    private func setupConstraints() {
        productImageView.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(10)
            make.centerY.equalTo(contentView)
        }
        verticalStackView.snp.makeConstraints { make in
            make.top.right.bottom.equalTo(contentView).inset(10)
            make.left.equalTo(productImageView.snp.right).offset(10)
        }
    }
}

