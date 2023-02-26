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
  //MARK: Cell Label olusturuldu
    let cellLabel: UILabel = {
        let cellLabel = UILabel()
        cellLabel.text = "Deneme Deneme"
        cellLabel.font = .systemFont(ofSize: 20)
        return cellLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBackground
        //MARK: Cell Label view a gomuldu
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
    //MARK: Snapkit ile tasarim yapildi
    func configure(){
        let cellLabel = cellLabel
        cellLabel.snp.makeConstraints { make in
            make.width.equalTo(contentView.snp.width)
            make.height.equalTo(contentView.snp.height)
            make.leading.equalTo(contentView.snp.leading).offset(10)
            make.top.equalTo(contentView.snp.top).inset(-15)
        }
    }
}
