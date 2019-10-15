//
//  FollowVC.swift
//  InstagramCopy
//
//  Created by JinBae Jeong on 2019/10/15.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit

private let reuseIdentifier = "FollowCell"

class FollowLikeVC: UITableViewController {
    
    // MARK: - Properties
    
    var viewFollowers = false
    var viewFollowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // register cell class
        tableView.register(FollowCell.self, forCellReuseIdentifier: reuseIdentifier)
        
        // configure nav controller
        if viewFollowers {
            navigationItem.title = "Followers"
        } else {
            navigationItem.title = "Following"
        }
    }
    
    // MARK: - UITableView
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! FollowCell
        
        return cell
    }
}
