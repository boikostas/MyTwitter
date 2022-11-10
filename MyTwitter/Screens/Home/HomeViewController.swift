//
//  HomeViewController.swift
//  MyTwitter
//
//  Created by Стас Бойко on 04.11.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    enum HomeTableViewCellsType {
        case followers([Follower])
        case post(PostCellModel)
        
        var nibName: String {
            switch self {
            case .followers(_):
                return "FollowersTableViewCell"
            case .post(_):
                return "PostTableViewCell"
            }
        }
        
        var identifier: String {
            switch self {
            case .followers(_):
                return "followerCell"
            case .post(_):
                return "postCell"
            }
        }
        
    }

    @IBOutlet weak var tableView: UITableView!
    private var items = [HomeTableViewCellsType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        let logo = UIImageView(image: UIImage(named: "icon.twitter.logo"))
        logo.sizeToFit()
        navigationItem.titleView = logo
        
        loadData()
    }
    
    private func registerCells() {
        items.forEach {
            tableView.register(UINib(nibName: $0.nibName, bundle: nil), forCellReuseIdentifier: $0.identifier)
        }
    }

    
    private func loadData() {
        let followers = TwitterDataHelper.shared.mockFollowers()
        let posts = TwitterDataHelper.shared.mockPosts()
        
        items.append(.followers(followers))
        items.append(contentsOf: posts.map { HomeTableViewCellsType.post($0) })
        registerCells()
        tableView.reloadData()
        print(items)
    }

}

extension HomeViewController: UITableViewDelegate {
    
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: item.identifier)
        
        switch item {
        case let .followers(followers):
            guard let cell = cell as? FollowersTableViewCell else { return UITableViewCell() }
            cell.configCell(followers)
        case var .post(post):
            guard let cell = cell as? PostTableViewCell else { return UITableViewCell() }
            
            cell.checkIsFullTextToShow = { [self] in
                
                if post.isFullTextShown == true {
                    post.isFullTextShown = false
                } else {
                    post.isFullTextShown = true
                    print(post.isFullTextShown)
                }
                tableView.reloadData()
            }
            
            cell.configCell(post)
        }
        
        return cell ?? UITableViewCell()
    }
    
    
}
