//
//  AllNotificationsViewController.swift
//  MyTwitter
//
//  Created by Стас Бойко on 04.11.2022.
//

import UIKit

class AllNotificationsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var items: [TweetCellModel] = {
        TwitterDataHelper.shared.mockAllNotificationsData()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewConfigure()
    }
    
    private func tableViewConfigure() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "TwitterTableViewCell", bundle: nil), forCellReuseIdentifier: "notificationCell")
    }

}

extension AllNotificationsViewController: UITableViewDelegate {
    
}

extension AllNotificationsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "notificationCell") as? TwitterTableViewCell else { return UITableViewCell() }
        
        cell.checkIsFullTextToShow = { [self] in
            
            if items[indexPath.row].isFullTextShown == true {
                items[indexPath.row].isFullTextShown = false
            } else {
                items[indexPath.row].isFullTextShown = true
            }
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
        
        cell.addData(from: items[indexPath.row])
 
        return cell
    }
    
    
}
