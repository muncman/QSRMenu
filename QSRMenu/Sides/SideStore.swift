//
//  SideStore.swift
//  QSRMenu
//
//  Created by Kevin Munc on 01/1/18.
//  Copyright © 2018 Method Up. All rights reserved.
//

import Foundation

class SideStore {
    
    /** Canned data. */
    let persistedItems = [
        MenuItem(name: "Small Soda", blurb: "In the 1950s, this was a Large.", price: NSDecimalNumber(value: 0.79)),
        MenuItem(name: "Medium Soda",
                 blurb: """
                    Soda. Soda pop. Dispensed by a soda jerk. Pop. Cola.
                    No Pepsi, Coke? Where's the Royal Crown Cola?
                    It's all just sugar water in the end. Enjoy!
                    """,
                 price: NSDecimalNumber(value: 0.89)),
        MenuItem(name: "Large Soda", blurb: "A little thirsty, are we?", price: NSDecimalNumber(value: 0.99)),
        MenuItem(name: "Giant Soda", blurb: "C'mon, you know you'll finish it...", price: NSDecimalNumber(value: 1.39)),
        MenuItem(name: "Water", blurb: "Free & healthy!", price: NSDecimalNumber(value: 0.00)),
        MenuItem(name: "Craft Beer", blurb: "It's beer:thirty somewhere", price: NSDecimalNumber(value: 5.99)),
        MenuItem(name: "Bourbon", blurb: "Why not?", price: NSDecimalNumber(value: 8.99)),
        MenuItem(name: "Small Fries", blurb: "Delish!", price: NSDecimalNumber(value: 0.69)),
        MenuItem(name: "Medium Fries", blurb: "French-fried per-taters", price: NSDecimalNumber(value: 0.79)),
        MenuItem(name: "Large Fries", blurb: "Long may freedon ring", price: NSDecimalNumber(value: 0.99)),
        MenuItem(name: "Mega Fries", blurb: "Sodium is your friend", price: NSDecimalNumber(value: 1.19))
    ]
    
}
