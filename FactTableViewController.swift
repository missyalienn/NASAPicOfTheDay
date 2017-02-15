//
//  FactTableViewController.swift
//  NASA_API
//
//  Created by Missy Allan on 2/15/17.
//  Copyright © 2017 Missy Allan. All rights reserved.
//

import UIKit

class FactTableViewController: UITableViewController {

    
    let factCellIdentifier: String = "FactCell"
    var planet: Planet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = planet.name

    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.planet.facts.count
        
}

    
    
    
}
