//
//  LogInScreen.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/23/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class LogInScreen: BaseScreen {
    
    override init() {
        super.init()
        visibility()
    }
    
    let logInLaterButton: XCUIElement = app.buttons["loginLaterButton"]
    
    func tapOnLogInLaterButton() {
        tap(logInLaterButton)
    }
}


// MARK: visibility
extension LogInScreen {
    
    func visibility() {
        guard logInLaterButton.waitForExistence(timeout: timeout) else {
                   XCTFail("Login Screen is not visible")
                   return
               }
    }
}

