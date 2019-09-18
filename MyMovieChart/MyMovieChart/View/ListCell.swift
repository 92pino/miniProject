//
//  ListCell.swift
//  MyMovieChart
//
//  Created by JinBae Jeong on 2019/09/18.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    let title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        
        return label
    }()
    
    let desc: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        
        return label
    }()
    
    let opendate: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        
        return label
    }()
    
    let rating: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        [title, desc].forEach {
            self.addSubview($0)
        }
        
        self.selectionStyle = .none
        configureConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            title.bottomAnchor.constraint(equalTo: desc.topAnchor, constant: -5),
            title.widthAnchor.constraint(equalToConstant: 240),
            title.heightAnchor.constraint(equalToConstant: 21),
            desc.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            desc.widthAnchor.constraint(equalToConstant: 240),
            desc.heightAnchor.constraint(equalToConstant: 21),
            desc.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15),
        ])
    }

}
