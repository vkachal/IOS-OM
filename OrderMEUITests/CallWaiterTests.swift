//
//  RestaurantDetailsTests.swift
//  OrderMEUITests
//
//  Created by Галя Мельник on 2/25/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import XCTest

class CallWaiterTests: BaseTests {

    func testBringMenu() {
        let loginScreen = LoginScreen()
        let restListScreen = loginScreen.tapOnLoginLaterButton()
        let restDetailsScreen = restListScreen.tapOnHakkasanRest()
        restDetailsScreen.tapOndetectTableButton()
        
        let selectTableSceen = SelectTableScreen()
        
        selectTableSceen.tapOnTextField()
        selectTableSceen.typeTableNumber(number: "3")
        selectTableSceen.tapOnSelectTableButton()
        
        restDetailsScreen.choose(option: .callAWaiter)
        restDetailsScreen.tapOnBringMenuButton()
        
        XCTAssertTrue(restDetailsScreen.waitForGotItAlert(), "There is no Got it alart")
        
    }
    
    func testCallHookahMan() {
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
