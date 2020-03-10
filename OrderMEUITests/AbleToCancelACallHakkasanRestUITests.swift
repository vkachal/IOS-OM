//
//  AbleToCancelACallHakkasanRestUITests.swift
//  OrderMEUITests
//
//  Created by Admin on 2/29/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import XCTest
class AbleToCancelACallHakkasanRestUITests: BaseTests {
  
    func testAbleToCancelACallHakkasanRest() {
        
        let logInScreen = LogInScreen()
        let listRestScreen = logInScreen.tapOnLogInLaterButton()
        let optionRestScreen = listRestScreen.tapOnHakkasanRest()

        optionRestScreen.tapOnCallHakkasan()
        optionRestScreen.tapOnCancelCallHakkasanAlert()
    
//    XCTAssertFalse(optionRestScreen.waitForCancelCallHakkasanAlert(), "Cancel call alert (pop up) for Hakkasan restaurant is visible")

        
    }
}
