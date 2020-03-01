//
//  RestaurantDetailsTests.swift
//  OrderMEUITests
//
//  Created by Галя Мельник on 2/25/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import XCTest

class CallWaiterTests: XCTestCase {

    func testBringMenu() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let loginScreen = LoginScreen()
        let restListScreen = loginScreen.tapOnLoginLaterButton()
        let restDetailsScreen = restListScreen.tapOnHakkasanRest()
        restDetailsScreen.tapOndetectTableButton()
        
        let selectTableSceen = SelectTableScreen()
        
        selectTableSceen.tapOnTextField()
        selectTableSceen.typeTableNumber(number: "3")
        selectTableSceen.tapOnSelectTableButton()
        
        restDetailsScreen.tapOnCallWaiterButton()
        restDetailsScreen.tapOnBringMenuButton()
        
        XCTAssertTrue(restDetailsScreen.waitForGotItAlert(), "There is no Got it alart")
        
    }
    
    func testCallHookahMan() {
        let app = XCUIApplication()
        app.launch()
        
        let loginScreen = LoginScreen()
        let restListScreen = loginScreen.tapOnLoginLaterButton()
        let restDetailsScreen = restListScreen.tapOnHakkasanRest()
        restDetailsScreen.tapOndetectTableButton()
        
        let selectTableSceen = SelectTableScreen()
        
        selectTableSceen.tapOnTextField()
        selectTableSceen.typeTableNumber(number: "3")
        selectTableSceen.tapOnSelectTableButton()
        
        restDetailsScreen.tapOnCallWaiterButton()
        restDetailsScreen.tapOnCallHookahMan()
        
        XCTAssertTrue(restDetailsScreen.waitForGotItAlert(), "There is no Got it alart")
    }
}

