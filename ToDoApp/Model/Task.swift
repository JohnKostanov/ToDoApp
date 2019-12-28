//
//  Task.swift
//  ToDoApp
//
//  Created by  Джон Костанов on 28/12/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import Foundation

struct Task {
    let title: String
    let description: String?
    private(set) var date: Date?
    let location: Location?

    init(title: String, description: String? = nil, location: Location? = nil) {
        self.title = title
        self.description = description
        self.date = Date()
        self.location = location
    }
}
