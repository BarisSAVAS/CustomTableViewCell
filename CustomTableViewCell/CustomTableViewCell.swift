//
//  CustomTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Barış Savaş on 27.02.2023.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {
    static let identifier = "CustomTableViewCell"
    let cellLabel: UILabel = {
        let cellLabel = UILabel()
        cellLabel.text = "Deneme Deneme"
        cellLabel.font = .systemFont(ofSize: 30)
        return cellLabel
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .orange
        contentView.addSubview(cellLabel)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        cellLabel.frame = CGRect(x: 5,
//                                 y: 5,
//                                 width: contentView.frame.width-10,
//                                 height: contentView.frame.size.height-10)
//    }
    func configure(){
        let cellLabel = cellLabel
        cellLabel.snp.makeConstraints { make in
            make.width.equalTo(contentView.snp.width)
            make.height.equalTo(contentView.snp.height)
            make.leading.equalTo(contentView.snp.leading).offset(20)
        }
    }
}
