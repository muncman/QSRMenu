//
//  MenuItemTests.swift
//  QSRMenuTests
//
//  Created by Kevin Munc on 01/1/18.
//  Copyright © 2018 Method Up. All rights reserved.
//

import XCTest
@testable import QSRMenu

/**
 * Notes: These tests currently assume the current locale is `en_US`.
 *        Also, really, much of this is only testing the SDK's formatting code...
 */
class MenuItemTests: XCTestCase {
    
    func testFormattedPrice_withGreaterThanOneDollar() {
        let item = menuItem(forPrice: NSDecimalNumber(value: 111.9900099))
        XCTAssertEqual("$111.99", item.formattedPrice, "Result should have currency symbol and be rounded to two decimal places")
    }
    
    func testFormattedPrice_withLessThanOnDollar() {
        let item = menuItem(forPrice: NSDecimalNumber(value: 000.9900099))
        XCTAssertEqual("$0.99", item.formattedPrice)
    }
    
    func testFormattedPrice_withLessThanZero() {
        let item = menuItem(forPrice: NSDecimalNumber(value: -88.8808080))
        XCTAssertEqual("-$88.88", item.formattedPrice)
    }
    
    func testFormattedPrice_withRoundingUp() {
        let item = menuItem(forPrice: NSDecimalNumber(value: 1.996))
        XCTAssertEqual("$2.00", item.formattedPrice)
    }
    
    func testFormattedPrice_withZero() {
        let item = menuItem(forPrice: NSDecimalNumber(value: 0.0000))
        XCTAssertEqual("$0.00", item.formattedPrice)
    }
    
    func testFormattedPrice_withString() {
        let item = menuItem(forPrice: NSDecimalNumber(string: "Not a Number"))
        XCTAssertEqual("NaN", item.formattedPrice, "Should fail over to 'NaN' for non-number values'")
    }
    
    func testFormattedPrice_withNil() {
        let item = menuItem(forPrice: NSDecimalNumber(string: nil))
        XCTAssertEqual("NaN", item.formattedPrice, "Should fail over to 'NaN' for invalid decimal values values'")
    }
    
    // MARK: - Helper Methods
    
    /** Yeah, it's simple enough already, but still represented duplication in this scope. */
    private func menuItem(forPrice price: NSDecimalNumber) -> MenuItem {
        return MenuItem(name: "name", blurb: "info details abstract", price: price)
    }
    
}
