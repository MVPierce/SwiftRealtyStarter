//
//  SwiftRealtyTableTableViewController.swift
//  SwiftRealty
//
//  Created by Pierce on 1/24/17.
//  Copyright © 2017 Pierce. All rights reserved.
//

import UIKit

class SwiftRealtyTableViewController: UITableViewController {

    var homes:[Listing] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let listing = Listing()
        listing.address = "123 Fake Street"
        listing.price = 1000000
        homes.append(listing)
        
        // Register the .xib cell file with a reuse identifier of "CustomHomeCell"
        let nib = UINib.init(nibName: "CustomHomeTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomHomeCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return homes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomHomeCell") as! CustomHomeTableViewCell
        
        cell.setCellContent(address: homes[indexPath.row].address, price: homes[indexPath.row].price)

        return cell
    }
    

}
