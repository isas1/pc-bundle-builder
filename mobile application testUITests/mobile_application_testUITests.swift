//
//  mobile_application_testUITests.swift
//  mobile application testUITests
//
//  Created by Sam Isaacs on 22/12/2015.
//  Copyright © 2015 Sam Isaacs. All rights reserved.
//

import XCTest

@testable import mobile_application_test

class mobile_application_testUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSelectPC2() {
        
        XCUIApplication().tables.staticTexts["GTX 950"].tap()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testRotateRightFourTimes() {
        
        XCUIDevice.sharedDevice().orientation = .LandscapeRight
        XCUIDevice.sharedDevice().orientation = .PortraitUpsideDown
        XCUIDevice.sharedDevice().orientation = .LandscapeLeft
        XCUIDevice.sharedDevice().orientation = .Portrait
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testRunThrough() {
        XCUIDevice.sharedDevice().orientation = .Portrait
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery.staticTexts["549.99"].tap()
        tablesQuery.staticTexts["289.99"].tap()
        tablesQuery.staticTexts["41.99"].tap()
        app.buttons["Reset"].tap()
        
    }
    
    
}
