//
//  BurgerStore.swift
//  QSRMenu
//
//  Created by Kevin Munc on 01/1/18.
//  Copyright © 2018 Method Up. All rights reserved.
//

import Foundation

class BurgerStore {
    
    let persistedItems = [
        MenuItem(name: "Small Burger", blurb: "Bite-sized goodness", price: NSDecimalNumber(value: 0.99)),
        MenuItem(name: "Medium Burger", blurb: "A classic", price: NSDecimalNumber(value: 1.19)),
        MenuItem(name: "Large Burger", blurb: "Stomach-satisfying", price: NSDecimalNumber(value: 1.29)),
        MenuItem(name: "Extra-Large Burger", blurb: "All the burger!", price: NSDecimalNumber(value: 1.49)),
        MenuItem(name: "Double Burger", blurb: "Two medium-sized patties", price: NSDecimalNumber(value: 1.59)),
        MenuItem(name: "Triple Burger", blurb: "Three medium-sized patties", price: NSDecimalNumber(value: 1.69)),
        MenuItem(name: "The Original", blurb: "Smaller, simple and plain, like the good ol' days", price: NSDecimalNumber(value: 1.39)),
        MenuItem(name: "THE Hamburger", blurb: "Yep. That one.", price: NSDecimalNumber(value: 1.79)),
        MenuItem(name: "The Works", blurb: "All. The. Toppings.", price: NSDecimalNumber(value: 1.89)),
        MenuItem(name: "Avacado Burger", blurb: "Because avacados are delicious! (and trendy)", price: NSDecimalNumber(value: 1.99))
    ]
    
}

