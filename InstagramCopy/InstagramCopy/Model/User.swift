//
//  User.swift
//  InstagramCopy
//
//  Created by JinBae Jeong on 2019/09/21.
//  Copyright © 2019 pino. All rights reserved.
//

import Foundation

class User {
    
    // attributes
    var userName: String!
    var name: String!
    var profileImageUrl: String!
    var uid: String!
    var isFollowed = false
    
    init(uid: String, dictionary: Dictionary<String, AnyObject>) {
        
        self.uid = uid
        
        if let userName = dictionary["userName"] as? String {
            self.userName = userName
        }
        
        if let name = dictionary["name"] as? String {
            self.name = name
        }
        
        if let profileImageUrl = dictionary["profileImageUrl"] as? String {
            self.profileImageUrl = profileImageUrl
        }
    }
}



