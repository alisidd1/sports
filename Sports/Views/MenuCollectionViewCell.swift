//
//  menuCollectionViewCell.swift
//  Sports
//
//  Created by Ali Siddiqui on 3/22/24.
//

import UIKit

class menuCollectionViewCell: UICollectionViewCell {
    let identifier = "menuCollectionViewCell"
    
    let menuLabelText : UILabel = {
        let menuLabelText = UILabel()
        menuLabelText.translatesAutoresizingMaskIntoConstraints = false
        menuLabelText.text = "Yesterday"
        menuLabelText.textColor = .white
        menuLabelText.textAlignment = .left
        return menuLabelText
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.addSubview(menuLabelText)
        
        menuLabelText.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        menuLabelText.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        menuLabelText.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        menuLabelText.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
