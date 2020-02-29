//
//  BringMenuUITests.swift
//  OrderMEUITests
//
//  Created by Admin on 2/29/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import XCTest

class BringMenuUITests: XCTestCase {

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
        let listRestScreen = logInScreen.tapOnLogInLaterButton()
        var optionRestScreen = listRestScreen.tapOnRomanovRest()
        let detectTableScreen = optionRestScreen.tapOnDetectTable()

        detectTableScreen.tapOnTableNumberTextField()
        detectTableScreen.typeInTableNumberTextField("3")
        optionRestScreen = detectTableScreen.tapOnSelectTable()
        optionRestScreen.tapOnCallWaiter()
        optionRestScreen.waitForBringMenuButtonOnCallWaiterPopUp()
        optionRestScreen.tapOnBringMenuButtonOnCallWaiterPopUp()
        XCTAssertTrue(optionRestScreen.waitForGotItAlert(), "Get it alert is not visible")
        optionRestScreen.tapOnGotItAlert()
        XCTAssertFalse(optionRestScreen.waitForGotItAlert(), "'Get it alert' is visible")
    }
}
