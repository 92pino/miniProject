//
//  DataSource.swift
//  SimpleNote
//
//  Created by JinBae Jeong on 25/06/2019.
//  Copyright © 2019 pino. All rights reserved.
//

import Foundation

protocol DataSource {
    
    func store<T>(object: T)
    func delete<T>(object: T)
    
}
