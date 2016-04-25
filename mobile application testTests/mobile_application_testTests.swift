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

    
    //SI. Unit test for pc objects.
    func testPCInitialisation() {
        
        //SI. test with valid data - should pass because all arguments within Pc object are met (as defined in Accessories.swift).
        let potentialPC = Pc(image: nil, name: "G1", graphics: "Radeon R7", cpu: "A6", hdd: 1, ssd:  nil, ram:  8, sku: 4643466, price: "499.99")
        
        //SI. Apple (2016) states that XCAssertNotNill is used to ensure an object is not nil, thus has supplied all arguments.
        XCTAssertNotNil(potentialPC)
        
        //SI. test with invalid data - should fail and display relevent error messages.
        let noName = Pc(image: nil, name: "", graphics: "Radeon R7", cpu: "A6", hdd: 1, ssd:  1, ram:  8, sku: 4643466, price: "499.99")
        //SI. XCTAssertNil is used to ensure an object is nill, thus an argument (name) will be nil.
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badSku = Pc(image: nil, name: "G1", graphics: "Radeon R7", cpu: "A6", hdd: 1, ssd:  nil, ram:  8, sku: -1, price: "499.99")
        XCTAssertNil(badSku, "sku is negative and therefore invalid")
    }
    
    //SI. Unit test for monitor objects.
    func testMonInitialisation() {
        
        //SI. test with valid data - should pass because all arguments within Monitors object are met (defined in Monitors.swift).
        let potentialMon = Monitors(image: nil, name: "Acer Pedator", screensize: "24", resolution: "A6", details: "IPS ZeroFrame Gaming Widescreen", sku: 465739, price: 219.95)
        XCTAssertNotNil(potentialMon)
        
        //SI. test with invalid data - should fail and display relevent error messages.
        let noScreenSize = Monitors(image: nil, name: "Acer Pedator", screensize: "", resolution: "A6", details: "IPS ZeroFrame Gaming Widescreen", sku: 12, price: 219.95)
        XCTAssertNil(noScreenSize, "Parameter ScreenSize is empty")
        
        let badPrice = Monitors(image: nil, name: "Acer Pedator", screensize: "24", resolution: "A6", details: "IPS ZeroFrame Gaming Widescreen", sku: 12, price: -219.95)
        XCTAssertNil(badPrice, "Price is negative and therefore invalid") //SI. end of invalid tests.
        
    }
    
    
    //SI. Unit test for accessory objects.
    func testAccInitialisation() {
        
        //SI. test with valid data - should pass because all arguments within Accessories object are met (defined in Accessories.swift).
        let potentialAcc = Accessories(image: nil, desc: "SSD Samsung", sku: 464800, price: "59.99")
        XCTAssertNotNil(potentialAcc)
        
        //SI. test with invalid data - should fail and display relevent error messages.
        let noPrice = Accessories(image: nil, desc: "SSD Samsung", sku: 464800, price: "")
        XCTAssertNil(noPrice, "Empty price, is invalid")
        
        let noName = Accessories(image: nil, desc: "", sku: 464800, price: "59.99")
        XCTAssertNil(noName, "No name, invalid")
        //SI. end of invalid tests.
    }

}
