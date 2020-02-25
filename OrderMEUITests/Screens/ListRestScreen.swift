//
//  ListRest.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/23/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest
class ListRestScreen {
    static let app = XCUIApplication()
    let oceanSeafoodRest: XCUIElement = app.tables.staticTexts["Ocean Seafood"]
    let hakkasanRest: XCUIElement = app.tables.staticTexts["Hakkasan"]
    let romanovRest: XCUIElement = app.tables.staticTexts["Romanov"]

    
    func tapOnRomanovRest() {
        romanovRest.tap()
    }
    
    func tapOnOceanSeafoodRest() {
        oceanSeafoodRest.tap()
    }
    
    func tapOnHakkasanRest() {
        hakkasanRest.tap()
    }
    
}
