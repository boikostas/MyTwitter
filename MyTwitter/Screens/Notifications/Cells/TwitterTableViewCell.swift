//
//  NotificationTableViewCell.swift
//  MyTwitter
//
//  Created by Стас Бойко on 04.11.2022.
//

import UIKit


struct TweetCellModel {
    var isFavorite: Bool
    var isFullTextShown: Bool = false
    var text: String
    var profileIcon: UIImage?
}

class TwitterTableViewCell: UITableViewCell {

    @IBOutlet weak var showFullTextButton: UIButton!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var fullTextLabel: UILabel!
    @IBOutlet weak var profileIcon: UIButton!
    
    var checkIsFullTextToShow: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        favoriteButton.setTitle("", for: .normal)
        profileIcon.setTitle("", for: .normal)
        showFullTextButton.setTitle("", for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func addData(from tweet: TweetCellModel) {
        if tweet.isFullTextShown {
            fullTextLabel.numberOfLines = 0
            showFullTextButton.setImage(UIImage(named: "icon.up.arrow"), for: .normal)
        } else {
            fullTextLabel.numberOfLines = 3
            showFullTextButton.setImage(UIImage(named: "icon.down.arrow"), for: .normal)
        }
        tweet.isFavorite ? favoriteButton.setImage(UIImage(systemName: "star.fill"), for: .normal) : favoriteButton.setImage(UIImage(systemName: "star"), for: .normal)
        profileIcon.setImage(tweet.profileIcon, for: .normal)
        fullTextLabel.text = tweet.text
    }
    
    @IBAction func openFullTextButtonPressed(_ sender: Any) {
        checkIsFullTextToShow?()
    }
}
