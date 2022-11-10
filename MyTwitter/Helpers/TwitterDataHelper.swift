//
//  TwitterDataHelper.swift
//  MyTwitter
//
//  Created by Стас Бойко on 05.11.2022.
//

import Foundation
import UIKit

final class TwitterDataHelper {
    static var shared = TwitterDataHelper()
    
    func mockAllNotificationsData() -> [TweetCellModel] {
        
         let items = [
            TweetCellModel(isFavorite: true, isFullTextShown: false, text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", profileIcon: UIImage(named: "icon.primary.account")),
            TweetCellModel(isFavorite: false, isFullTextShown: false, text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident", profileIcon: UIImage(named: "icon.primary.account")),
            TweetCellModel(isFavorite: true, isFullTextShown: false, text: "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", profileIcon: UIImage(named: "icon.primary.account"))
         ]
        return items
    }
    
    func mockFollowers() -> [Follower] {
        
        let items = [
            Follower(icon: UIImage(named: "icon.primary.account"), name: "Borya", userName: "@boris"),
            Follower(icon: UIImage(named: "icon.primary.account"), name: "Andru", userName: "@andr"),
            Follower(icon: UIImage(named: "icon.primary.account"), name: "Petro", userName: "@peter"),
            Follower(icon: UIImage(named: "icon.primary.account"), name: "Stepan", userName: "@stepa123"),
            Follower(icon: UIImage(named: "icon.primary.account"), name: "Volodya", userName: "@vovan8"),
            Follower(icon: UIImage(named: "icon.primary.account"), name: "Vasyl", userName: "@vasbok"),
            Follower(icon: UIImage(named: "icon.primary.account"), name: "Victory", userName: "@vik")
        ]
        return items
    }
    
    func mockPosts() -> [PostCellModel] {
        
        let items = [
            PostCellModel(profileIcon: UIImage(named: "icon.primary.account"), name: "Maximmilian", userName: "@maxfacobson", postTime: "3h", postText: "ver since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use"),
            PostCellModel(profileIcon: UIImage(named: "icon.primary.account"), name: "Billy", userName: "@billy_kimm", postTime: "12h", postText: "ver since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use"),
            PostCellModel(profileIcon: UIImage(named: "icon.primary.account"), name: "Maxim2000", userName: "@max2000", postTime: "23h", postText: "ver since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use"),
            PostCellModel(profileIcon: UIImage(named: "icon.primary.account"), name: "Antonio_Lopess", userName: "@anto4lop", postTime: "3h", postText: "ver since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use")
        ]
        return items
    }
}
