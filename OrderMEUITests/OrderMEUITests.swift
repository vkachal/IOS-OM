//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/11/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import XCTest

class OrderMEUITests: XCTestCase {
    func testOderRolls () {
        let loginScreen = LoginScreen()
        
        let restListScreen = loginScreen.tapOnLoginLaterButton()
        
        let restDetailScreen = restListScreen.tapOnHakkasanRest()
        restDetailScreen.tapOndetectTableButton()
        
        let selectTableScreen = SelectTableScreen()
        selectTableScreen.tapOnTextField()
        selectTableScreen.typeTableNumber(number: "1")
        selectTableScreen.tapOnSelectTableButton()
        
        restDetailScreen.tapOnMenuButton()
        
        let menuScreen = MenuScreen()
        menuScreen.tapOnRollsButton()
        
        let selectOrderScreen = SelectOrderScreen()
        selectOrderScreen.tapOnPlusRoundButton()
        selectOrderScreen.tapOnBucketButton()
        
        let acceptDeleteOrderScreen = AcceptDeleteOrderScreen()
        acceptDeleteOrderScreen.tapOnAcceptButton()
        
        XCTAssertTrue(acceptDeleteOrderScreen.waitForloginAlertButton(), "Login for reservation alert is not visible")
    }
}
