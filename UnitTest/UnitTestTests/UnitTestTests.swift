//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by 요한 on 2020/05/21.
//  Copyright © 2020 요한. All rights reserved.
//

import XCTest
@testable import UnitTest


class UnitTestTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // 이 메서드는 테스트 케이스의 첫번째 테스트가 실행되기 전에 딱 한번 호출됩니다.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        // 이 메서드는 모든 테스트가 끝난 후 한번만 호출됩니다.
    }

    func testCoordinatePoint() {
        let coordinatePoint = CoordinatePoint(x: 10, y: 20)
        XCTAssertTrue(coordinatePoint.x)
    }
    
    func testVanillaLeapYear() {
        let year = Year(calendarYear: 1996)
        XCTAssertTrue(year.isLeapYear)
    }
    
    func testAnyOldYear() {
        let year = Year(calendarYear: 1997)
        XCTAssertTrue(!year.isLeapYear)
    }

    func testCentury() {
        let year = Year(calendarYear: 1900)
        XCTAssertTrue(!year.isLeapYear)
    }

    func testExceptionalCentury() {
        let year = Year(calendarYear: 2400)
        XCTAssertTrue(year.isLeapYear)
    }
    
    func testYear() {
        let year = Year(calendarYear: 300)
        XCTAssertTrue(year.isLeapYear)
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
