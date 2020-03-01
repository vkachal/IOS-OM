//
//  CallToRestaurantTests.swift
//  OrderMEUITests
//
//  Created by Галя Мельник on 2/25/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import XCTest

class CallToRestaurantTests: BaseTests {
    
    func testCallToRestaurant() {
        let loginScreen = LoginScreen()
        let restListScreen = loginScreen.tapOnLoginLaterButton()
        let restDetailsScreen = restListScreen.tapOnHakkasanRest()
        restDetailsScreen.tapOnCallToRestaurant()
        
        XCTAssertEqual("Call", restDetailsScreen.callAlertButton.label, "A test in the button is not matching")
        XCTAssertTrue(restDetailsScreen.callAlertButton.isHittable, "A button is not hittable")
    }
    
}
