//
//  RestListScreeen.swift
//  OrderMEUITests
//
//  Created by Галя Мельник on 2/22/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class RestListScreen: BaseScreen {
    
    override init() {
        super.init()
        visibility()
    }
    
    let hakkasanRest: XCUIElement = app.tables.staticTexts["Hakkasan"]
    
    func tapOnHakkasanRest() -> RestDetailScreen {
        tap(hakkasanRest)
        return RestDetailScreen()
    }
}

//MARK: visibility

extension RestListScreen {
    func visibility() {
        guard hakkasanRest.waitForExistence(timeout: timeout) else {
            XCTFail("There is no hakkasan restaurant")
            return
        }
    }
}
