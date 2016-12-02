//
//  HelloWorldTests.swift
//  UnitTestTutorial
//
//  Created by Ahmed Khalaf on 23/11/16.
//
//

import XCTest
@testable import Vapor
import HTTP

class HelloWorldTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testEndpoint() throws {
        let drop = try makeTestDroplet()
        let request = try Request(method: .get, uri: "/")
        let expectedBody = "Hello there, World!"
        
        let response = try drop.respond(to: request)
        if let string = response.body.bytes?.string {
            print(string)
        }
        XCTAssertEqual(expectedBody, response.body.bytes?.string)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
