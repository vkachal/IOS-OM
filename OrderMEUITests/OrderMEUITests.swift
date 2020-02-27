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
    
        let listRestScreen = ListRestScreen()
        listRestScreen.tapOnRomanovRest()

        let optionRestScreen = OptionRestScreen()
        optionRestScreen.tapOnDetectTable()

        let detectTableScreen = DetectTableScreen()
        detectTableScreen.tapOnTableNumberTextField()
        detectTableScreen.typeInTableNumberTextField(table: "3")
        detectTableScreen.tapOnSelectTable()
        optionRestScreen.tapOnCallWaiter()
        optionRestScreen.bringMenuButtonOnCallWaiterPopUp.waitForExistence(timeout: 10)
        optionRestScreen.tapOnbringMenuButtonOnCallWaiterPopUp()
        XCTAssertTrue(optionRestScreen.gotItAlert.waitForExistence(timeout: 5), "'Get it alert' is not visible")
        optionRestScreen.gotItAlert
        app.alerts["Got it!"].scrollViews.otherElements.buttons["OK"].tap()
        XCTAssertFalse(optionRestScreen.gotItAlert.waitForExistence(timeout: 5), "'Get it alert' is visible")
}
    
    func testOceanSeafoodRestMenuOptionsClickable() {
        let app = XCUIApplication()
        app.launch()
        let logInScreen = LogInScreen()
        logInScreen.tapOnLogInLaterButton()
        let listRestScreen = ListRestScreen()
//        wait for rest:
        listRestScreen.oceanSeafoodRest.waitForExistence(timeout: 10)
        listRestScreen.tapOnOceanSeafoodRest()
        
        let optionRestScreen = OptionRestScreen()
        optionRestScreen.tapOnMenu()
        let menuRestScreen = MenuRestScreen()
        menuRestScreen.tapOnOceanSeafoodMenuAppetizersOptions()
        optionRestScreen.tapOnBackButton()
        XCTAssertTrue(menuRestScreen.oceanSeafoodMenuAppetizersOption.waitForExistence(timeout: 5), "Appetizers option for Ocean Seafood restaurant is not visible")
        menuRestScreen.tapOnOceanSeafoodMenuSoupOptions()
        optionRestScreen.tapOnBackButton()
        XCTAssertTrue(menuRestScreen.oceanSeafoodMenuSoupOption.waitForExistence(timeout: 5), "Soup option for Ocean Seafood restaurant is not visible")
        menuRestScreen.tapOnOceanSeafoodMenuShrimpOptions()
        optionRestScreen.tapOnBackButton()
        XCTAssertTrue(menuRestScreen.oceanSeafoodMenuShrimpOption.waitForExistence(timeout: 5), "Shrimp option for Ocean Seafood restaurant is not visible")
        menuRestScreen.tapOnOceanSeafoodMenuBeefOptions()
        optionRestScreen.tapOnBackButton()
        XCTAssertTrue(menuRestScreen.oceanSeafoodMenuBeefOption.waitForExistence(timeout: 5), "Beef option for Ocean Seafood restaurant is not visible")
        
    }
    
    func testAbleToCancelACallHakkasanRest() {
        let app = XCUIApplication()
        app.launch()
        let logInScreen = LogInScreen()
        logInScreen.tapOnLogInLaterButton()
        let listRestScreen = ListRestScreen()
        listRestScreen.hakkasanRest.waitForExistence(timeout: 10)
        listRestScreen.tapOnHakkasanRest()
        let optionRestScreen = OptionRestScreen()

        optionRestScreen.tapOnCallHakkasan()
        optionRestScreen.tapOnCancelCallHakkasanAlert()
//        XCTAssertFalse(optionRestScreen.cancelCallHakkasanAlert.exists, "Cancel call alert (pop up) for Hakkasan restaurant is visible")
//
        
    }
}
