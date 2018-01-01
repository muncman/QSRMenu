//
//  BurgerViewController.swift
//  QSRMenu
//
//  Created by Kevin Munc on 01/1/18.
//  Copyright © 2018 Method Up. All rights reserved.
//

import UIKit

class BurgerViewController: UIViewController {
    
    var menuItem: MenuItem?
    @IBOutlet private weak var name: UILabel!
    @IBOutlet private weak var price: UILabel!
    @IBOutlet private weak var information: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        populateView(item: menuItem)
    }
    
    // MARK: - Interface methods
    
    private func populateView(item: MenuItem?) {
        guard let item = item else {
            resetView()
            return
        }
        name.text = item.name
        price.text = item.formattedPrice
        information.text = item.blurb
    }
    
    private func resetView() {
        name.text = NSLocalizedString("Oops", comment: "empty.item.name")
        price.text = "$0.00"
        information.text = NSLocalizedString("Go back and pick something from the menu!", comment: "empty.item.blurb")
    }

}
