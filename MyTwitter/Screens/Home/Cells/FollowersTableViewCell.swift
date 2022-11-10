//
//  FollowersTableViewCell.swift
//  MyTwitter
//
//  Created by Стас Бойко on 08.11.2022.
//

import UIKit

class FollowersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var followers = [Follower]()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(_ followers: [Follower]) {
        self.followers = followers
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(FollowerCollectionViewCell.self, forCellWithReuseIdentifier: "followerCollectionViewCell")
        collectionView.register(UINib(nibName: "FollowerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "followerCollectionViewCell")
        
        collectionView.reloadData()
    }
    
}

extension FollowersTableViewCell: UICollectionViewDelegate {
    
}

extension FollowersTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        followers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "followerCollectionViewCell", for: indexPath) as? FollowerCollectionViewCell else { return UICollectionViewCell() }
        
        cell.configCell(followers[indexPath.row])
        
        return cell
    }
    
    
}

extension FollowersTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 90, height: 120)
    }
}
