//
//  DataProvider.swift
//  ToDoApp
//
//  Created by  Джон Костанов on 30/12/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class DataProvider: NSObject {
    
}


extension DataProvider: UITableViewDelegate {
    
}

extension DataProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
