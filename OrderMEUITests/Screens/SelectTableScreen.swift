//
//  SelectTableScreen.swift
//  OrderMEUITests
//
//  Created by Галя Мельник on 2/22/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class SelectTableScreen: BaseScreen {
    
    override init() {
        super.init()
        visibility()
    }
    let textField: XCUIElement = app.textFields["tableNumberTextField"]
    let selectTableButton: XCUIElement = app.buttons["Select table"]
    
    func tapOnTextField() {
        tap(textField)
    }
    
    func typeTableNumber(number: String) {
        type(number, to: textField)
    }
    
    func tapOnSelectTableButton() {
        tap(selectTableButton)
    }
    
}

//MARK: visibility
extension SelectTableScreen {
    func visibility() {
        guard textField.waitForExistence(timeout: timeout) else {
            XCTFail("There is no text field")
            return
        }
    }
}
