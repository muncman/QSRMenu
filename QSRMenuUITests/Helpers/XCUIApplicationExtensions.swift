//
//  XCUIApplicationExtensions.swift
//  QSRMenuUITests
//
//  Created by Kevin Munc on 01/1/18.
//  Copyright © 2018 Method Up. All rights reserved.
//

import XCTest

extension XCUIApplication {
    
    func validateAtHomeScreen(test: XCTestCase) {
        XCTContext.runActivity(named: "Validate at top home screen") { _ in
            XCTAssertTrue(test.waitForElementToAppear(navigationBars["Hamburgers"]))
        }
    }
    
}

