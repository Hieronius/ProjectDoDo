//
//  GenericViewController.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 03.07.2023.
//

import UIKit

class GenericViewController<T: UIView>: UIViewController {
    
    public var rootView: T {
        return view as! T
    }
    
    override open func loadView() {
        self.view = T()
    }
}
