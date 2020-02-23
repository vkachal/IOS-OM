//
//  ListRest.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/23/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest
class ListRest {
    static let app = XCUIApplication()
    let romanovRest: XCUIElement = app.tables.staticTexts["Romanov"]
    
    func tapOnRomanovRest() {
        romanovRest.tap()
    }
    
}
