//
//  ViewController.swift
//  MyMovieChart
//
//  Created by JinBae Jeong on 2019/09/18.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    var dataset = [
        ("다크 나이트", "영웅물에 철학에 음악까지 더해져 예술이 되다.", "2008-09-04", 8.95),
        ("호우시절", "때를 알고 내리는 좋은 비", "2009-10-08", 7.31),
        ("말할 수 없는 비밀", "여기서 너까지 다섯 걸음", "2015-05-07", 9.19)
    ]
    
    lazy var movieList: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(cell: ListCell.self)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 80
        
        return tableView
    }()
    
    lazy var list: [MovieVO] = {
        var datalist = [MovieVO]()
        for (title, desc, opendate, rating) in self.dataset {
            let mvo = MovieVO()
            mvo.title = title
            mvo.description = desc
            mvo.opendate = opendate
            mvo.rating = rating
            
            datalist.append(mvo)
        }
        
        return datalist
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "영화정보"
        
        view.addSubview(movieList)
        
        configureConstraints()
    }


    private func configureConstraints() {
        NSLayoutConstraint.activate([
            movieList.topAnchor.constraint(equalTo: view.topAnchor),
            movieList.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            movieList.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            movieList.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = self.list[indexPath.row]
        // Default Subtitle Cell Style
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: ListCell.identifier)
//        cell.textLabel?.text = row.title
//        cell.detailTextLabel?.text = row.description

        if let cell = tableView.dequeueReusableCell(withIdentifier: ListCell.identifier, for: indexPath) as? ListCell {
            
            cell.title.text = row.title
            cell.desc.text = row.description
            
            return cell
        }
        return UITableViewCell()
    }
}

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("선택된 행은 \(indexPath.row) 번째 행입니다.")
    }
}
