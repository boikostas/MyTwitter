//
//  FollowerCollectionViewCell.swift
//  MyTwitter
//
//  Created by Стас Бойко on 08.11.2022.
//

import UIKit

class FollowerCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configCell(_ follower: Follower) {
        icon.image = follower.icon
        nameLabel.text = follower.name
        userNameLabel.text = follower.userName
    }
    
}
