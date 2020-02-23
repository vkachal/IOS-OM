//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/23/20.
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

    func testBringMenu() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let logInScreen = LogInScreen()
        logInScreen.tapOnLogInLaterButton()
        
        let listRest = ListRest()
        listRest.tapOnRomanovRest()
        
        let optionRest = OptionRest()
        optionRest.tapOnDetectTable()
        
        let detectTableScreen = DetectTableScreen()
        detectTableScreen.tapOnTableNumberTextField()
        detectTableScreen.typeInTableNumberTextField(table: "3")
        detectTableScreen.tapOnSelectTable()
        
        optionRest.tapCallWaiter()
        
        app.alerts["The waiter is on his way"].scrollViews.otherElements.buttons["Bring a menu"].tap()
        XCTAssertTrue(optionRest.gotItAlert.waitForExistence(timeout: 5), "Get it alert is not visible")
        
//        app.alerts["Got it!"].scrollViews.otherElements.buttons["OK"].tap()
        
    }
}
