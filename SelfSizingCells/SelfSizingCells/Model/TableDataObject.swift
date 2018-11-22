//
//  TableDataObject.swift
//  CleanArchitecture
//
//  Created by Marcin on 22.11.2018.
//  Copyright © 2018 rabieko. All rights reserved.
//

import Foundation

class TableDataObject {

    let number: Int
    let title: String
    let subtitle: String

    init(number: Int, title: String, subtitle: String) {
        self.number = number
        self.title = title
        self.subtitle = subtitle
    }
}
