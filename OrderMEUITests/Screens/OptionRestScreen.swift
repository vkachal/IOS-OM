//
//  File.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/23/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest
class OptionRest {
    static let app = XCUIApplication()
    static let collectionViewsQuery = app.collectionViews

    let detectTable: XCUIElement = collectionViewsQuery.staticTexts["Detect table"]
    let callWaiter: XCUIElement = collectionViewsQuery.staticTexts["Call a waiter"]
    let gotItAlert: XCUIElement = app.alerts["Got it!"].scrollViews.otherElements.buttons["OK"]
    

    func tapOnDetectTable() {
        detectTable.tap()
    }
    
    func tapCallWaiter() {
        callWaiter.tap()
    }
    
}
