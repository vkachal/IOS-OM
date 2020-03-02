//
//  SecondUITests.swift
//  OrderMEUITests
//
//  Created by Admin on 2/28/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
// swiftlint:disable:next line_length

import XCTest

class OceanSeafoodRestMenuOptionsClickableUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    func testOceanSeafoodRestMenuOptionsClickable() {
        let app = XCUIApplication()
        app.launch()
        let logInScreen = LogInScreen()
        
        let listRestScreen = logInScreen.tapOnLogInLaterButton()
//        wait for rest:
//        listRestScreen.waitForOceanSeafoodRest()
//        listRestScreen.tapOnOceanSeafoodRest()
        
        let optionRestScreen = listRestScreen.tapOnOceanSeafoodRest()
//        optionRestScreen.tapOnMenu()
        let menuRestScreen = optionRestScreen.tapOnMenu()
        menuRestScreen.tapOnOceanSeafoodMenuAppetizersOptions()
        optionRestScreen.tapOnBackButton()
        XCTAssertTrue(menuRestScreen.waitForOceanSeafoodMenuAppetizersOptions(), "Appetizers option for Ocean Seafood restaurant is not visible")
        menuRestScreen.tapOnOceanSeafoodMenuSoupOptions()
        optionRestScreen.tapOnBackButton()
        XCTAssertTrue(menuRestScreen.waitForOceanSeafoodMenuSoupOptions(), "Soup option for Ocean Seafood restaurant is not visible")
        menuRestScreen.tapOnOceanSeafoodMenuShrimpOptions()
        optionRestScreen.tapOnBackButton()
        XCTAssertTrue(menuRestScreen.waitForOceanSeafoodMenuShrimpOptions(), "Shrimp option for Ocean Seafood restaurant is not visible")
        menuRestScreen.tapOnOceanSeafoodMenuBeefOptions()
        optionRestScreen.tapOnBackButton()
        XCTAssertTrue(menuRestScreen.waitForOceanSeafoodMenuBeefOptions(), "Beef option for Ocean Seafood restaurant is not visible")
        
        
    }
}
