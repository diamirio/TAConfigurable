//
//  ConfigurableTests.swift
//  ConfigurableTests
//
//  Created by Thomas Koller on 11.03.19.
//  Copyright © 2019 Tailored Media Gmbh. All rights reserved.
//

import XCTest
@testable import TAConfigurable

extension DateFormatter: DefaultConfigurable {}

class ConfigurableTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDatFormatterConfigurable() {
        let dayFormat = "dd"
        let localeIdentifier = "de_AT"
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let dayFormatter = DateFormatter {
            $0.dateFormat = dayFormat
            $0.locale = Locale(identifier: localeIdentifier)
        }
        
        XCTAssert(dayFormatter.dateFormat == dayFormat)
        XCTAssert(dayFormatter.locale.identifier == localeIdentifier)
    }

}
