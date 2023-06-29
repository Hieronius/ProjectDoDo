//
//  ViewController.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 29.06.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private var tableView: UITableView = {
        /// initialization of the tableView
        let tableView = UITableView.init()
        tableView.backgroundColor = .orange
        return tableView
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Private Methods
    
    private func setupViews() {
        view.addSubview(tableView)
    }
    
    private func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }


}

