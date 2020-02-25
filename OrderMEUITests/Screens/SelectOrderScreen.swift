//
//  SelectOrderScreen.swift
//  OrderMEUITests
//
//  Created by Yaroslava Grats on 2/25/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class SelectOrderScreen: BaseScreen {
    override init() {
        super .init()
        visibility()
    }
    let plusRoundButton: XCUIElement = tablesQuery.buttons["plusButton"]
    
    func tapOnPlusRoundButton() {
        tap(plusRoundButton)
    }
    let bucketButton: XCUIElement = app.buttons["bucketButton"]
    
    func tapOnBucketButton() {
       tap(bucketButton)
    }
}
// MARK: visibility
extension SelectOrderScreen {
    func visibility() {
        guard plusRoundButton.waitForExistence(timeout: timeout) else {
            return
        }
    }
}
