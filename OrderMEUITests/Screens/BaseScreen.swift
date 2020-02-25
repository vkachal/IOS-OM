//
//  BaseScreen.swift
//  OrderMEUITests
//
//  Created by Галя Мельник on 2/22/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class BaseScreen {
    static let app = XCUIApplication()
    static let collectionViewsQuery = app.collectionViews
    static let tablesQuery = app.tables
    var timeout: Double = 5.0
    
    func tap(_ element: XCUIElement) {
        element.tap()
    }
    
    func type(_ text: String, to element: XCUIElement) {
        element.typeText(text)
    }
}
