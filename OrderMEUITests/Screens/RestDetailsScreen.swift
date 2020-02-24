//
//  RestDetailsScreen.swift
//  OrderMEUITests
//
//  Created by Галя Мельник on 2/22/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class RestDetailScreen: BaseScreen {
    
    override init() {
        super.init()
        visibility()
    }
    
    let detectTableButton: XCUIElement = collectionViewsQuery.cells["Detect table"].staticTexts["Detect table"]
    
    let callWaiterButton: XCUIElement = collectionViewsQuery.staticTexts["Call a waiter"]
    
    let bringMenuButton: XCUIElement = app.alerts["The waiter is on his way"].scrollViews.otherElements.buttons["Bring a menu"]
    
    let callToRestaurant: XCUIElement = app.collectionViews.cells["+1 415-829-8148"].otherElements.containing(.staticText, identifier:"+1 415-829-8148").element
    
    let callAlertButton: XCUIElement = app.alerts["Call Hakkasan"].scrollViews.otherElements.buttons["Call"]
    
    let okAlertButton: XCUIElement = app.alerts["Got it!"].scrollViews.otherElements.buttons["OK"]
    
    let callHookahMan: XCUIElement = app.alerts["The waiter is on his way"].scrollViews.otherElements.buttons["Call a hookah man"]
    
    func tapOndetectTableButton() {
        tap(detectTableButton)
    }
    
    func tapOnCallWaiterButton() {
        tap(callWaiterButton)
    }
    
    func tapOnBringMenuButton() {
        tap(bringMenuButton)
    }
    
    func tapOnGotItAlert() {
        tap(okAlertButton)
    }
    
    func waitForGotItAlert() -> Bool {
        okAlertButton.waitForExistence(timeout: 10)
    }
    
    func tapOnCallToRestaurant() {
        tap(callToRestaurant)
    }
    
    func tapOnCallButton() {
        tap(callAlertButton)
    }
    
    func tapOnCallHookahMan() {
        tap(callHookahMan)
    }

}

// MARK: visibility

extension RestDetailScreen {
func visibility() {
    guard detectTableButton.waitForExistence(timeout: timeout) else {
        XCTFail("There is no detect table button")
        return
    }
    }
}
