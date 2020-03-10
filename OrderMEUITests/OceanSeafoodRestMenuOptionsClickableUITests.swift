//
//  SecondUITests.swift
//  OrderMEUITests
//
//  Created by Admin on 2/28/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
// swiftlint:disable:next line_length

import XCTest

class OceanSeafoodRestMenuOptionsClickableUITests: BaseTests {


    func testOceanSeafoodRestMenuOptionsClickable() {

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
