//
//  BaseTasts.swift
//  OrderMEUITests
//
//  Created by Admin on 3/8/20.
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
