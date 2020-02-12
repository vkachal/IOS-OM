//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/11/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import XCTest

class OrderMEUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.buttons["loginLaterButton"].tap()
        app.tables.staticTexts["Hakkasan"].tap()
        
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery.cells["Detect table"].staticTexts["Detect table"].tap()
        app.textFields["tableNumberTextField"].tap()
        app.textFields["tableNumberTextField"].typeText("3")
        app.buttons["Select table"].tap()
        
        collectionViewsQuery.staticTexts["Call a waiter"].tap()

        app.alerts["The waiter is on his way"].scrollViews.otherElements.buttons["Bring a menu"].tap()
        let okAlertButton = app.alerts["Got it!"].scrollViews.otherElements.buttons["OK"]
        XCTAssertTrue(okAlertButton.waitForExistence(timeout: 5))
        
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
