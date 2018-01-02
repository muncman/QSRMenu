//
//  QSRMenuUITests.swift
//  QSRMenuUITests
//
//  Created by Kevin Munc on 12/26/17.
//  Copyright © 2017 Method Up. All rights reserved.
//

import XCTest

class QSRMenuUITests: XCTestCase {
    
    let app = XCUIApplication()
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        app.launchArguments += ["\(self)"]
        app.launchEnvironment["QSR_XCUI_Testing"] = true.description
        app.launch()
    }
    
    func testSmokeHappyPathSanityCheck() {
        XCTContext.runActivity(named: "Check launch state") { _ in
            app.validateAtHomeScreen(test: self)
            XCTAssertTrue(waitForElementToAppear(app.staticTexts["Small Burger"]))
        }
        XCTContext.runActivity(named: "Go to burger detail") { _ in
            app.staticTexts["Small Burger"].tap()
            XCTAssertTrue(waitForElementToAppear(app.navigationBars["Burger Zone"]))
            XCTAssertTrue(waitForElementToAppear(app.staticTexts["Small Burger"]))
            XCTAssertTrue(waitForElementToAppear(app.staticTexts["$0.99"]))
            XCTAssertTrue(waitForElementToAppear(app.staticTexts["Bite-sized goodness"]))
        }
        XCTContext.runActivity(named: "Go to Side Orders tab") { _ in
            app.tabBars.buttons["Sides"].tap()
            XCTAssertTrue(waitForElementToAppear(app.navigationBars["Side Orders"]))
            XCTAssertTrue(waitForElementToAppear(app.staticTexts["Small Soda"]))
            app.staticTexts["Small Soda"].tap()
            XCTAssertTrue(waitForElementToAppear(app.navigationBars["Side Ways"]))
            XCTAssertTrue(waitForElementToAppear(app.staticTexts["Small Soda"]))
            XCTAssertTrue(waitForElementToAppear(app.staticTexts["$0.79"]))
            XCTAssertTrue(waitForElementToAppear(app.staticTexts["In the 1950s, this was a Large."]))
        }
    }
    
}
