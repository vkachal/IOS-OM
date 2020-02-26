//
//  AceptDeleteOrderScreen.swift
//  OrderMEUITests
//
//  Created by Yaroslava Grats on 2/25/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class AcceptDeleteOrderScreen: BaseScreen {
    
    override init() {
        super .init()
        visibility()
    }
    
    let acceptButton: XCUIElement = app.buttons["acceptButton"]
    
    func tapOnAcceptButton() {
        tap(acceptButton)
    }
    let loginAlertButton: XCUIElement = app.alerts["You did not login"].scrollViews.otherElements.buttons["Login"]
    
    func tapOnLoginAlertButton() {
        tap(loginAlertButton)
    }
    func waitForloginAlertButton() -> Bool {
        loginAlertButton.waitForExistence(timeout: timeout)
    }
}
// MARK: visibility
extension AcceptDeleteOrderScreen {
    func visibility() {
        guard acceptButton.waitForExistence(timeout: timeout) else {
            return
        }
    }
}
