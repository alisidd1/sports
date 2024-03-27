//
//  TeamTableViewCell.swift
//  Sports
//
//  Created by Ali Siddiqui on 3/24/24.
//

import UIKit

class TableViewImageCell: UITableViewCell {

    let teamImageView: UIImageView = {
        let teamImageView = UIImageView()
        return teamImageView
    }()
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
        
    }

func configure(teamImage: UIImageView, index: Int) {
    teamImage.image = UIImage(named: "Team1")
}

