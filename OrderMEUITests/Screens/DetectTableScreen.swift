//
//  DetectTableScreen.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/23/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class DetectTableScreen: BaseScreen {

    let tableNumberTextField: XCUIElement = app.textFields["tableNumberTextField"]
    let selectTable: XCUIElement = app.buttons["Select table"]
    
    func tapOnTableNumberTextField() {
        tableNumberTextField.tap()
    }
    
    func typeInTableNumberTextField(table: String) {
        type(table, to: tableNumberTextField)
    }
    
    func tapOnSelectTable() {
        selectTable.tap()
    }
    
    
}
