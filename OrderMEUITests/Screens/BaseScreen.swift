//
//  BaseScreen.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/26/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class BaseScreen {
    
    init() {

    }
    
    static let app = XCUIApplication()
    static let collectionViewsQuery = app.collectionViews
    let timeout: Double = 10.0
    
    func tap(_ element: XCUIElement) {
        element.tap()
    }
    
    func type(_ text: String, to element: XCUIElement) {
        element.typeText(text)
    }
}
