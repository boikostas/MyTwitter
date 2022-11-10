//
//  PostTableViewCell.swift
//  MyTwitter
//
//  Created by Стас Бойко on 08.11.2022.
//

import UIKit

struct PostCellModel {
    var profileIcon: UIImage?
    var name: String
    var userName: String
    var postTime: String
    var postText: String
    var isFullTextShown: Bool = false
}

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var profileIcon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var postTime: UILabel!
    @IBOutlet weak var postTextLabel: UILabel!
    @IBOutlet weak var showFullTextButton: UIButton!
    
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var retweetButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
    var checkIsFullTextToShow: (() -> Void)?

    override func awakeFromNib() {
        super.awakeFromNib()
        showFullTextButton.setTitle("", for: .normal)
        shareButton.setTitle("", for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(_ post: PostCellModel) {
        
        if post.isFullTextShown {
            postTextLabel.numberOfLines = 0
            showFullTextButton.setImage(UIImage(named: "icon.up.arrow"), for: .normal)
        } else {
            postTextLabel.numberOfLines = 3
            showFullTextButton.setImage(UIImage(named: "icon.down.arrow"), for: .normal)
        }
        profileIcon.image = post.profileIcon
        name.text = post.name
        nickName.text = post.userName
        postTime.text = post.postTime
        postTextLabel.text = post.postText
        
    }
    
    @IBAction func showFullPostButtonPressed(_ sender: Any) {
        checkIsFullTextToShow?()
    }
}
