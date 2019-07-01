//
//  Note.swift
//  SimpleNote
//
//  Created by JinBae Jeong on 25/06/2019.
//  Copyright © 2019 pino. All rights reserved.
//

import Foundation

class Note {
    
    var identifier: String
    var content: String
    var lastEdited: Date
    
    init(
        identifier: String = UUID().uuidString,
        content: String,
        lastEdited: Date = Date()) {
        self.identifier = identifier
        self.content = content
        self.lastEdited = lastEdited
    }
    
}

extension Note: Writable {
    
    func write(dataSource: DataSource) {
        self.lastEdited = Date()
        
        dataSource.store(object: self)
    }
    
    func delete(dataSource: DataSource) {
        dataSource.delete(object: self)
    }
    
}
