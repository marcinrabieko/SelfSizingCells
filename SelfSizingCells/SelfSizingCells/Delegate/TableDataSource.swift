//
//  TableDataSource.swift
//  CleanArchitecture
//
//  Created by Marcin on 22.11.2018.
//  Copyright © 2018 rabieko. All rights reserved.
//

import UIKit

class TableDataSource: NSObject, UITableViewDataSource {

    var data: [TableDataObject] = []

    override init() {
        super.init()

        data = createRandomData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "\(TableViewCell.self)") as? TableViewCell {
            cell.dataObject = data[indexPath.row]
            return cell
        } else {
            return UITableViewCell(frame: CGRect.zero)
        }
    }

    func createRandomData() -> [TableDataObject] {
        var data: [TableDataObject] = []

        for index in 0...100 {
            let title = Randomizer.randomString(length: Int.random(in: 10...30))
            let subtitle = Randomizer.randomString(length: Int.random(in: 50...300))
            data.append(TableDataObject(number: index + 1, title: title, subtitle: subtitle))
        }
        return data
    }
}
