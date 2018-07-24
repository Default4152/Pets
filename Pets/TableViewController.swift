//
//  TableViewController.swift
//  Pets
//
//  Created by Conner on 7/24/18.
//  Copyright © 2018 Conner. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows

        return pets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Pet", for: indexPath)
        let pet = pets[indexPath.row]
        // Configure the cell...
        
        cell.textLabel?.text = pet.name + " is of type " + pet.type
        
        return cell
    }
    
    let pets: [Pet] = [Pet(name: "Null", type: "Cat"), Pet(name: "Hobo", type: "Cat")]

}
