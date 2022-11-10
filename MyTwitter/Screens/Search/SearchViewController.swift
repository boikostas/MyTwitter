//
//  SearchViewController.swift
//  MyTwitter
//
//  Created by Стас Бойко on 04.11.2022.
//

import UIKit

class SearchViewController: UIViewController {
    
    lazy var searchBar = UISearchBar()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSearchBar()
    }
    
    private func setupSearchBar() {
        searchBar.searchBarStyle = .default
        searchBar.sizeToFit()
        searchBar.delegate = self
        searchBar.placeholder = "Search Twitter"
        navigationItem.titleView = searchBar
    }

}

extension SearchViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
    }
}
