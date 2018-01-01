//
//  SidesTableViewController.swift
//  QSRMenu
//
//  Created by Kevin Munc on 01/1/18.
//  Copyright © 2018 Method Up. All rights reserved.
//

import UIKit

class SidesTableViewController: BurgersTableViewController {

    override lazy var menuItems: Array<MenuItem>! = {
        return SideStore().persistedItems
    }()

}
