//
//  CustomBannerPriceLabel.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 13.07.2023.
//

import UIKit

final class CustomBannerPriceLabel: UILabel {
    
    // MARK: Public Properties
    
    var contentInsets = UIEdgeInsets.zero
    
    override var intrinsicContentSize: CGSize {
        return addInsets(to: super.intrinsicContentSize)
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return addInsets(to: super.sizeThatFits(size))
    }
    
    // MARK: Initialization
    
    override func drawText(in rect: CGRect) {
        let insetRect = rect.inset(by: contentInsets)
        super.drawText(in: insetRect)
    }
    
    // MARK: Private Methods
    
    private func addInsets(to size: CGSize) -> CGSize {
        let width = size.width + contentInsets.left + contentInsets.right
        let height = size.height + contentInsets.top + contentInsets.bottom
        return CGSize(width: width, height: height)
    }
    
    
}
