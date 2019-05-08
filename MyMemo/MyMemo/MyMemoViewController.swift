//
//  ViewController.swift
//  MyMemo
//
//  Created by JinBae Jeong on 06/05/2019.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit

class MyMemoViewController: UIViewController {
  
  let tableView = UITableView()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    title = "목록"
    register()
//    autoLayout()
  }
  
  func register() {
    tableView.rowHeight = 80
    tableView.register(ImageTableViewCell.self, forCellReuseIdentifier: "Cell2")
    
    
    tableView.dataSource = self
    view.addSubview(tableView)
  }
  
  func autoLayout(){
    tableView.translatesAutoresizingMaskIntoConstraints = false
    
    tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
  }


}

extension MyMemoViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)

    cell.textLabel?.text = "1111"
    
    return cell
  }
  
  
}
