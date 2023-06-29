//
//  ViewController.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 29.06.2023.
//

import UIKit
import SnapKit

final class MenuScreenVC: UIViewController {
    
    // MARK: - Private Properties
    
    private lazy var tableView: UITableView = {
        /// initialization of the tableView
        let tableView = UITableView()
        tableView.backgroundColor = .orange
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
}

// MARK: - Extensions


// MARK: - UI
    
extension MenuScreenVC {
    private func setupViews() {
        view.addSubview(tableView)
        
    }
    
    private func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
}

// MARK: - UITableViewDelegate

extension MenuScreenVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}

// MARK: - UITableViewDataSource

extension MenuScreenVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /// initialization of empty cell by hardcode
        return UITableViewCell.init()
    }

}



