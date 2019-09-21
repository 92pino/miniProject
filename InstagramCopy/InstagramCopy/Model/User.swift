//
//  User.swift
//  InstagramCopy
//
//  Created by JinBae Jeong on 2019/09/21.
//  Copyright © 2019 pino. All rights reserved.
//

import Firebase

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
    
    func follow() {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        
        guard let uid = uid else { return }
        
        // set is followed to true
        self.isFollowed = true
        
        // add followed user to current user-following structure
        USER_FOLLOWING_REF.child(currentUid).updateChildValues([uid: 1])
        
        // add current user to followed user-follower structure
        USER_FOLLOWER_REF.child(uid).updateChildValues([currentUid: 1])
        
        // upload follow notification to server
        // uploadFollowNotificationToServer()
        
        // add followed users posts to current user-feed
        USER_POSTS_REF.child(uid).observe(.childAdded) { (snapshot) in
            let postId = snapshot.key
            USER_FEED_REF.child(currentUid).updateChildValues([postId: 1])
        }
    }
    
    func unfollow() {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        
        // UPDATE: - get uid like this to work with update
        guard let uid = uid else { return }
        
        self.isFollowed = false
        
        USER_FOLLOWING_REF.child(currentUid).child(uid).removeValue()
        
        USER_FOLLOWER_REF.child(uid).child(currentUid).removeValue()
        
        USER_POSTS_REF.child(uid).observe(.childAdded) { (snapshot) in
            let postId = snapshot.key
            USER_FEED_REF.child(currentUid).child(postId).removeValue()
        }
    }
    
}



