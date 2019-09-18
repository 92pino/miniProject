//
//  Identifiable.swift
//  MyMovieChart
//
//  Created by JinBae Jeong on 2019/09/18.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit

protocol Identifiable {
    static var identifier: String { get }
}

extension Identifiable {
    static var identifier: String {
        return String(describing: self)
        
    }
}
