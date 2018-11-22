//
//  ViewController.swift
//  CleanArchitecture
//
//  Created by Marcin on 22.11.2018.
//  Copyright © 2018 rabieko. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let tableView = UITableView()
    var dataSource = TableDataSource()
    let tableDelegate = TableDataDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }

    func setupTableView() {
        tableView.dataSource = dataSource
        tableView.delegate = tableDelegate
        tableView.estimatedRowHeight = 50
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "\(TableViewCell.self)")

        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
