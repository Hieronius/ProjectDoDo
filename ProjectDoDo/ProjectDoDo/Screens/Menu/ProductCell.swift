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
    
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Гавайская"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
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
    
    // MARK: - Private Methods
    
    private func setupViews() {
        contentView.addSubview(nameLabel)
    }
    
    private func setupConstraints() {
        nameLabel.snp.makeConstraints { make in
            make.edges.equalTo(contentView).inset(20)
        }
    }
    
    // MARK: - Public Methods
    
    func update(_ product: String) {
        nameLabel.text = product
    }
}

