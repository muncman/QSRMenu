//
//  BurgersTableViewController.swift
//  QSRMenu
//
//  Created by Kevin Munc on 01/1/18.
//  Copyright © 2018 Method Up. All rights reserved.
//

import UIKit

class BurgersTableViewController: UITableViewController {
    
    private lazy var menuItems: Array<MenuItem>! = {
        return BurgerStore().persistedItems
    }()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        menuItems = nil
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemCell", for: indexPath)
        let menuItem = menuItems[indexPath.row]
        cell.textLabel?.text = menuItem.name
        cell.detailTextLabel?.text = menuItem.blurb
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
