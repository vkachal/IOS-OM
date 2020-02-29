//
//  AbleToCancelACallHakkasanRestUITests.swift
//  OrderMEUITests
//
//  Created by Admin on 2/29/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import XCTest
class AbleToCancelACallHakkasanRestUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

  
    func testAbleToCancelACallHakkasanRest() {
        let app = XCUIApplication()
        app.launch()
        let logInScreen = LogInScreen()
        let listRestScreen = logInScreen.tapOnLogInLaterButton()
        let optionRestScreen = listRestScreen.tapOnHakkasanRest()

        optionRestScreen.tapOnCallHakkasan()
        optionRestScreen.tapOnCancelCallHakkasanAlert()
//        XCTAssertFalse(optionRestScreen.cancelCallHakkasanAlert.exists, "Cancel call alert (pop up) for Hakkasan restaurant is visible")
//
        
    }
}
