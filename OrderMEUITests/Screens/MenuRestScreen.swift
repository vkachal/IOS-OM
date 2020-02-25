//
//  MenuRestScreen.swift
//  OrderMEUITests
//
//  Created by Admin on 2/25/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class MenuRestScreen{
   
    static let app = XCUIApplication()
    static let collectionViewsQuery = app.collectionViews
    
// Ocean Seafood restaurant Menu options
    let oceanSeafoodMenuAppetizersOption: XCUIElement = collectionViewsQuery.staticTexts["Appetizers"]
    let oceanSeafoodMenuSoupOption: XCUIElement = collectionViewsQuery.staticTexts["Soup"]
    let oceanSeafoodMenuShrimpOption: XCUIElement = collectionViewsQuery.staticTexts["Shrimp"]
    let oceanSeafoodMenuBeefOption: XCUIElement = collectionViewsQuery.staticTexts["Beef"]

// Funcs tap on Ocean Seafood restaurant Menu options
    func tapOnOceanSeafoodMenuAppetizersOptions() {
        oceanSeafoodMenuAppetizersOption.tap()
    }
    
    func tapOnOceanSeafoodMenuSoupOptions() {
        oceanSeafoodMenuSoupOption.tap()
    }
    
    func tapOnOceanSeafoodMenuShrimpOptions() {
        oceanSeafoodMenuShrimpOption.tap()
    }
    
    func tapOnOceanSeafoodMenuBeefOptions() {
        oceanSeafoodMenuBeefOption.tap()
    }
    
}
