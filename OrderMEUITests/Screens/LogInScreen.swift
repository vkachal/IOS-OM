//
//  LogInScreen.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/23/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class LogInScreen {
    static let app = XCUIApplication()
    let logInLaterButton: XCUIElement = app.buttons["loginLaterButton"]
    
    func tapOnLogInLaterButton() {
        logInLaterButton.tap()
    }
}
