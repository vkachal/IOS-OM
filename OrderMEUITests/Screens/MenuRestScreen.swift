//
//  MenuRestScreen.swift
//  OrderMEUITests
//
//  Created by Admin on 2/25/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class MenuRestScreen: BaseScreen {
    
// Ocean Seafood restaurant Menu options
    let oceanSeafoodMenuAppetizersOption: XCUIElement = collectionViewsQuery.staticTexts["Appetizers"]
    let oceanSeafoodMenuSoupOption: XCUIElement = collectionViewsQuery.staticTexts["Soup"]
    let oceanSeafoodMenuShrimpOption: XCUIElement = collectionViewsQuery.staticTexts["Shrimp"]
    let oceanSeafoodMenuBeefOption: XCUIElement = collectionViewsQuery.staticTexts["Beef"]

// Funcs tap on Ocean Seafood restaurant Menu options
    func tapOnOceanSeafoodMenuAppetizersOptions() {
        tap(oceanSeafoodMenuAppetizersOption)
    }
    
    func tapOnOceanSeafoodMenuSoupOptions() {
        tap(oceanSeafoodMenuSoupOption)
    }
    
    func tapOnOceanSeafoodMenuShrimpOptions() {
        tap(oceanSeafoodMenuShrimpOption)
    }
    
    func tapOnOceanSeafoodMenuBeefOptions() {
        tap(oceanSeafoodMenuBeefOption)
    }
    
}

//for extention need some stable locator


