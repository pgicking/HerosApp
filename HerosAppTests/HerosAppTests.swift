//
//  HerosAppTests.swift
//  HerosAppTests
//
//  Created by Peter Gicking on 5/18/16.
//  Copyright © 2016 Peter Gicking. All rights reserved.
//

import XCTest
@testable import HerosApp

class HerosAppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHeroInitialization() {
        // Success case.
        let potentialItem = Hero(name: "Newest meal", portrait: nil)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Hero(name: "", portrait: nil)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Hero(name: "Really bad rating", portrait: nil)
        XCTAssertNotNil(badRating)
    }
    
}
