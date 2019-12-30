//
//  DataProviderTests.swift
//  ToDoAppTests
//
//  Created by  Джон Костанов on 30/12/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import XCTest
@testable import ToDoApp

class DataProviderTests: XCTestCase {
    
    var sut: DataProvider!
    var tableView: UITableView!

    override func setUp() {
        sut = DataProvider()
        tableView = UITableView()
        tableView.dataSource = sut
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testNumberOfSectionsIsTwo() {
        
        let numberOfSections = tableView.numberOfSections
        
        XCTAssertEqual(numberOfSections, 2)
    }
    
    func testNumberOfRowsInSectionZeroIsTaskCount() {
        sut.taskManager = TaskManager()
        
        sut.taskManager?.add(task: Task(title: "Foo"))
        
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 1)
        
        sut.taskManager?.add(task: Task(title: "Bar"))
        tableView.reloadData()
               
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 2)
    }
}
