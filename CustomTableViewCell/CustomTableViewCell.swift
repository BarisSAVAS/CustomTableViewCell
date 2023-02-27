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
    let descriptionLabel: UILabel = {
        let cellLabel = UILabel()
        cellLabel.text = "Aciklama aciklama aciklama"
        cellLabel.font = .systemFont(ofSize: 20)
        return cellLabel
    }()
    let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named:"image")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBackground
        //MARK: Cell Label view a gomuldu
        contentView.addSubview(cellLabel)
        contentView.addSubview(myImageView)
        contentView.addSubview(descriptionLabel)
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
        myImageView.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leading).offset(15)
            make.top.equalTo(contentView.snp.top).offset(10)
        }
        cellLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(10)
            make.trailing.equalTo(contentView.snp.trailing).offset(-10)
        }
        descriptionLabel.snp.makeConstraints { make in
            make.bottom.equalTo(contentView.snp.bottom).inset(10)
            make.trailing.equalTo(cellLabel.snp.trailing)
        }
        
    }
}
