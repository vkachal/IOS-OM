//
//  File.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/23/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest
class OptionRestScreen: BaseScreen {
    
    override init() {
        super.init()
        visibility()
    }
    

// 6 var options for the each restaurant
    let detectTable: XCUIElement = collectionViewsQuery.staticTexts["Detect table"]
    let callWaiter: XCUIElement = collectionViewsQuery.staticTexts["Call a waiter"]
    let menu: XCUIElement = collectionViewsQuery.staticTexts["Menu"]
// have to create data file with phone number for Hakkasan and other restaurant. Ask how to do it!
    let callHakkasan: XCUIElement = collectionViewsQuery.staticTexts["+1 415-829-8148"]

// call restaurant alerts
    let cancelCallHakkasanAlert: XCUIElement = app.alerts["Call Hakkasan"].scrollViews.otherElements.buttons["Cancel"]

//  var Call Waiter pop up
    let bringMenuButtonOnCallWaiterPopUp: XCUIElement = app.alerts["The waiter is on his way"].scrollViews.otherElements.buttons["Bring a menu"]
    let gotItAlert: XCUIElement = app.alerts["Got it!"].scrollViews.otherElements.buttons["OK"]
    
    // back button
    let backButton: XCUIElement = app.buttons["Back 50"]

// 6 tap funcs for the restaurant options
    func tapOnDetectTable() -> DetectTableScreen {
        tap(detectTable)
        return DetectTableScreen()
    }
    
    func tapOnCallWaiter() {
        tap(callWaiter)
    }
    
    func tapOnMenu() -> MenuRestScreen{
        tap(menu)
        return MenuRestScreen()
    }
    
//  Tap funcs for Call Waiter pop up
    
    func tapOnBringMenuButtonOnCallWaiterPopUp() {
        tap(bringMenuButtonOnCallWaiterPopUp)
    }
    
    func tapOnGotItAlert() {
        tap(gotItAlert)
    }
    
// Back button for any screen
    func tapOnBackButton() {
        tap(backButton)
    }
    
//Call to the Restaurant
    func tapOnCallHakkasan() {
        tap(callHakkasan)
    }
    
//Call to the Rastaurant alerts
    func tapOnCancelCallHakkasanAlert() {
        tap(cancelCallHakkasanAlert)
    }
    
//Wait for the element
    func waitForBringMenuButtonOnCallWaiterPopUp() -> Bool {
        waitForTheElement(bringMenuButtonOnCallWaiterPopUp)
    }
    
    func waitForGotItAlert() -> Bool {
        waitForTheElement(gotItAlert)
    }
    
}

// MARK: visibility

extension OptionRestScreen {
    
    func visibility() {
        guard menu.waitForExistence(timeout: timeout) else {
                   XCTFail("OptionRest Screen is not visible")
                   return
               }
    }
}
