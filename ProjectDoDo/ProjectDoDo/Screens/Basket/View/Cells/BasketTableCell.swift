//
//  BasketTableCell.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 24.07.2023.
//

import UIKit

final class BasketTableCell: UITableViewCell {
    
    // MARK: - Public Properties
    
    static let reuseID = "BasketCell"
    
    // MARK: - Private Properties
    
    private var headerLabel = UILabel()
    private var container = UIView()
    private var productImage = UIImageView()
    private var productLabel = UILabel()
    private var productDetail = UILabel()
    private var productPrice = UILabel()
    
    private var horizontalLine = UIImage()
    
    private var counterHorizontalStackView = UIStackView()
    private var minusButton = UIButton()
    private var counterLabel = UILabel()
    private var plusButton = UIButton()
    
    // MARK - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
