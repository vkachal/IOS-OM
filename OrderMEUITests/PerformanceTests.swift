//
//  PerformanceTests.swift
//  OrderMEUITests
//
//  Created by Галя Мельник on 2/25/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import XCTest

class PerformanceTests: XCTestCase {
    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
