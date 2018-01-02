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
        assert(item != nil, "Dev Error: A MenuItem should always be passed to this instance.")
        name.text = item!.name
        price.text = item!.formattedPrice
        information.text = item!.blurb
    }

}
