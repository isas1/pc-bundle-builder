//
//  mobile_application_testUITests.swift
//  mobile application testUITests
//
//  Created by Sam Isaacs on 22/12/2015.
//  Copyright © 2015 Sam Isaacs. All rights reserved.
//

//SI. Apple (2016) Xcode has a built in testing framework - XCTest.
import XCTest

@testable import mobile_application_test

class mobile_application_testUITests: XCTestCase {
        
    override func setUp() {
        
        super.setUp()
        
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {

        super.tearDown()
    }
    
    func testSelectPC2() {
        
        //SI. Recorded test to tap table cell.
        XCUIApplication().tables.staticTexts["GTX 950"].tap()
    }
    
    func testRotateRightFourTimes() {
        
        //SI. recorded test to change orientation.
        XCUIDevice.sharedDevice().orientation = .LandscapeRight
        XCUIDevice.sharedDevice().orientation = .PortraitUpsideDown
        XCUIDevice.sharedDevice().orientation = .LandscapeLeft
        XCUIDevice.sharedDevice().orientation = .Portrait
    }
    
    func testRunThrough() {
        
        //SI. recorded test - full runthrough of application.
        XCUIDevice.sharedDevice().orientation = .Portrait
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery.staticTexts["549.99"].tap()
        tablesQuery.staticTexts["289.99"].tap()
        tablesQuery.staticTexts["41.99"].tap()
        app.buttons["Reset"].tap()
    }
}
