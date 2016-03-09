//
//  mobile_application_testTests.swift
//  mobile application testTests
//
//  Created by Sam Isaacs on 22/12/2015.
//  Copyright © 2015 Sam Isaacs. All rights reserved.
//


//SI. Apple (2016) Xcode has a built in testing framework - XCTest.
import XCTest
@testable import mobile_application_test


//SI. Default unit tests.
class mobile_application_testTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //SI. Apple (2016) states that a functional test is to see if code performs as expected, whilst performance tests measure the speed code is executing.
    //REF. Apple (2016) Define Your Data Model. [Online] Available from: https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson6.html#//apple_ref/doc/uid/TP40015214-CH20-SW1 [Accessed: 29 February 2016].
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    //SI. added custom unit test which should give our variables values.
    //SI. Apple (2016) states that XCAssertNotNill is used to ensure an object (in this case "PCs") has a value other than nil after initialisation.
    func testPCInitialization() {
        
        //SI. test with valid data - should pass.
        let potentialItem = Pc(image: nil, name: "G1", graphics: "Radeon R7", cpu: "A6", hdd: 1, ssd:  nil, ram:  8, sku: 4643466, price: 499.99)
        XCTAssertNotNil(potentialItem)
        
        //SI. test with invalid data - should fail.
        let noName = Pc(image: nil, name: "", graphics: "Radeon R7", cpu: "A6", hdd: 1, ssd:  nil, ram:  8, sku: 4643466, price: 499.99)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badPrice = Pc(image: nil, name: "G1", graphics: "Radeon R7", cpu: "A6", hdd: 1, ssd:  nil, ram:  8, sku: -1, price: 499.99)
        XCTAssertNil(badPrice, "Price is negative and therefore invalid")
    }
}
