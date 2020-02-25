//
//  MenuScreen.swift
//  OrderMEUITests
//
//  Created by Yaroslava Grats on 2/25/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class MenuScreen: BaseScreen {
    override init() {
        super .init()
        visibility()
    }
    let rollsButton: XCUIElement = collectionViewsQuery.cells.otherElements.containing(.staticText, identifier:"Rolls").element
    
    func tapOnRollsButton() {
        tap(rollsButton)
    }
}
// MARK: visibility
extension MenuScreen {
    func visibility() {
        guard rollsButton.waitForExistence(timeout: timeout) else {
        return
        }
    }
}
