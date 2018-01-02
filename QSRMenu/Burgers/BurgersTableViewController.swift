//
//  BurgersTableViewController.swift
//  QSRMenu
//
//  Created by Kevin Munc on 01/1/18.
//  Copyright © 2018 Method Up. All rights reserved.
//

import UIKit

class BurgersTableViewController: UITableViewController {
    
    lazy var menuItems: Array<MenuItem>! = {
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
    
    /** Clear the separator lines after the last row. */
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView(frame: .zero)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? BurgerViewController else { return }
        if let selectedIndexPath = tableView.indexPathForSelectedRow, selectedIndexPath.row < menuItems.count {
            destinationVC.menuItem = menuItems[selectedIndexPath.row]
        }
    }

}
