//
//  TableViewCell.swift
//  CleanArchitecture
//
//  Created by Marcin on 22.11.2018.
//  Copyright © 2018 rabieko. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var dataObject: TableDataObject? {
        didSet {
            number.text = dataObject?.number.description
            title.text = dataObject?.title
            subtitle.text = dataObject?.subtitle
        }
    }

    let number = UILabel()
    let title = UILabel()
    let subtitle = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        contentView.addSubview(number)
        contentView.addSubview(title)
        contentView.addSubview(subtitle)

        title.numberOfLines = 0
        title.lineBreakMode = .byWordWrapping
        subtitle.numberOfLines = 0
        subtitle.lineBreakMode = .byWordWrapping

        number.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(15)
            make.top.equalToSuperview().offset(15)
        }
        title.snp.makeConstraints { make in
            make.leading.equalTo(number.snp.trailing).offset(15)
            make.trailing.equalToSuperview().offset(-15)
            make.top.equalToSuperview().offset(15)
        }
        subtitle.snp.makeConstraints { make in
            let insets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
            make.leading.trailing.equalToSuperview().inset(insets)
            make.top.equalTo(title.snp.bottom).offset(15)
            make.bottom.equalToSuperview().offset(-15)
        }
    }
}
