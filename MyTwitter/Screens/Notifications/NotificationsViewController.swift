//
//  NotificationsViewController.swift
//  MyTwitter
//
//  Created by Стас Бойко on 04.11.2022.
//

import UIKit

class NotificationsViewController: UIViewController {
    
    private enum NotificationTabType: Int {
        
        case all
        case mentions
        
        var title: String {
            switch self {
            case .all:
                return "All"
            case .mentions:
                return "Mentions"
            }
        }
        
        var vc: UIViewController {
            
            let storyboard = UIStoryboard(name: "Notifications", bundle: nil)
            
            switch self {
            case .all:
                return storyboard.instantiateViewController(withIdentifier: "All notifications")
            case .mentions:
                return storyboard.instantiateViewController(withIdentifier: "Mention notifications")
            }
        }
    }

    @IBOutlet var segmentedControlViews: [UIView]! {
        didSet {
            segmentedControlViews[1].backgroundColor = .white
        }
    }
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
    
    private let segmentTabs = [NotificationTabType.all, NotificationTabType.mentions]
    private var selectedVC: UIViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSegmentedControl()
        changeVC(with: segmentTabs[0])
    }
    
    private func setupSegmentedControl() {
        segmentedControl.setDividerImage(UIImage().withTintColor(.clear), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        segmentedControl.subviews.forEach { $0.backgroundColor = .white }
        segmentedControl.setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor : UIColor(named: "primaryColor") ?? .blue,
            NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16)
        ], for: .selected)
        
        segmentedControl.setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor : UIColor.darkGray,
            NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16)
        ], for: .normal)
    }
    
    
    @IBAction func segmentedControlChangedValue(_ sender: Any) {
        if segmentedControl.selectedSegmentIndex == 0 {
            segmentedControlViews[0].backgroundColor = UIColor(named: "primaryColor")
            segmentedControlViews[1].backgroundColor = .white
        } else {
            segmentedControlViews[1].backgroundColor = UIColor(named: "primaryColor")
            segmentedControlViews[0].backgroundColor = .white
        }
        
        let selectedTab = segmentTabs[segmentedControl.selectedSegmentIndex]
        changeVC(with: selectedTab)
    }
    
    private func changeVC(with newNotificationType: NotificationTabType) {
        
        if let selectedVC = selectedVC {
            selectedVC.willMove(toParent: nil)
            selectedVC.view.removeFromSuperview()
            selectedVC.removeFromParent()
        }
        
        let newVC = newNotificationType.vc
        selectedVC = newVC
        
        addChild(newVC)
        newVC.view.frame = containerView.bounds
        containerView.addSubview(newVC.view)
        newVC.didMove(toParent: self)
        
    }


}
