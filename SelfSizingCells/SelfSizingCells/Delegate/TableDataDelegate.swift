//
//  TableDataDelegate.swift
//  CleanArchitecture
//
//  Created by Marcin on 22.11.2018.
//  Copyright © 2018 rabieko. All rights reserved.
//

import UIKit

class TableDataDelegate: NSObject, UITableViewDelegate {

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
