//
//  ReservationScreen.swift
//  OrderMEUITests
//
//  Created by Галя Мельник on 2/29/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class ReservationScreen: BaseScreen {
    
    override init() {
        super.init()
        visibility()
    }

    let loginLaterButton: XCUIElement = app.buttons["loginLaterButton"]
    
    func tapOnLoginLaterButton() -> RestListScreen {
        tap(loginLaterButton)
        return RestListScreen()
    }
}

// MARK: visibility

extension RestListScreen {
    
    func visibility() {
        guard loginLaterButton.waitForExistence(timeout: timeout) else {
            XCTFail("There is not login screen")
            return
        }
    }
}
