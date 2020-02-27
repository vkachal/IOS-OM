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
    
    override init() {
        super.init()
        visibility()
        
    }

    let tableNumberTextField: XCUIElement = app.textFields["tableNumberTextField"]
    let selectTable: XCUIElement = app.buttons["Select table"]
    
    func tapOnTableNumberTextField() {
        tap(tableNumberTextField)
    }
    
    func typeInTableNumberTextField(table: String) {
        type(table, to: tableNumberTextField)
    }
    
    func tapOnSelectTable() {
        tap(selectTable)
    }
    
    
}

// MARK: visibility

extension DetectTableScreen {
    
    func visibility() {
        guard selectTable.waitForExistence(timeout: timeout) else {
                   XCTFail("DetectTable Screen is not visible")
                   return
               }
    }
}
