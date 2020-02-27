//
//  ListRest.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/23/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class ListRestScreen: BaseScreen {
    
    override init() {
        super.init()
        visibility()
    }
    
    let oceanSeafoodRest: XCUIElement = app.tables.staticTexts["Ocean Seafood"]
    let hakkasanRest: XCUIElement = app.tables.staticTexts["Hakkasan"]
    let romanovRest: XCUIElement = app.tables.staticTexts["Romanov"]

    func tapOnRomanovRest() {
        tap(romanovRest)
    }
    
    func tapOnOceanSeafoodRest() {
        tap(oceanSeafoodRest)
    }
    
    func tapOnHakkasanRest() {
        tap(hakkasanRest)
    }
    
}

// MARK: visibility

extension ListRestScreen {
    
    func visibility() {
        guard hakkasanRest.waitForExistence(timeout: timeout) else {
                   XCTFail("ListRest Screen is not visible")
                   return
               }
    }
}
