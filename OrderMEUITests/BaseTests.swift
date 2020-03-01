//
//  BaseTests.swift
//  OrderMEUITests
//
//  Created by Галя Мельник on 2/29/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class BaseTests: XCTestCase {
    override func setUp() {
        let app = XCUIApplication()
        app.launch()
    }
    
}
