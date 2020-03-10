//
//  BringMenuUITests.swift
//  OrderMEUITests
//
//  Created by Admin on 2/29/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import XCTest

class BringMenuUITests: BaseTests {
    
    func testBringMenu() {
        // UI tests must launch the application that they test.
        
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
