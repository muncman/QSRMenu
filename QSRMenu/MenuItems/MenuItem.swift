//
//  MenuItem.swift
//  QSRMenu
//
//  Created by Kevin Munc on 01/1/18.
//  Copyright © 2018 Method Up. All rights reserved.
//

import Foundation

struct MenuItem {
    
    let name: String
    let blurb: String
    let price: NSDecimalNumber
    // TODO: add image(s), maybe `ingredients: Array<String>`
    
    var formattedPrice: String {
        get {
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .currency
            numberFormatter.locale = NSLocale.current
            return numberFormatter.string(from: price) ?? ""
        }
    }
    
}
