//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/11/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import XCTest

class OrderMEUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBringMenu() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let loginScreen = LoginScreen()
        let restListScreen = loginScreen.tapOnLoginLaterButton()
        let restDetailsScreen = restListScreen.tapOnHakkasanRest()
        restDetailsScreen.tapOndetectTableButton()
        
        let selectTableSceen = SelectTableScreen()
        
        selectTableSceen.tapOnTextField()
        selectTableSceen.typeTableNumber(number: "3")
        selectTableSceen.tapOnSelectTableButton()
        
        restDetailsScreen.tapOnCallWaiterButton()
        restDetailsScreen.tapOnBringMenuButton()
        
        XCTAssertTrue(restDetailsScreen.waitForGotItAlert(), "There is no Got it alart")
        
    }
    
    func testCallToRestaurant() {
        let app = XCUIApplication()
        app.launch()
        
        let loginScreen = LoginScreen()
        let restListScreen = loginScreen.tapOnLoginLaterButton()
        let restDetailsScreen = restListScreen.tapOnHakkasanRest()
        restDetailsScreen.tapOnCallToRestaurant()
        
        XCTAssertEqual("Call", restDetailsScreen.callAlertButton.label, "A test in the button is not matching")
        XCTAssertTrue(restDetailsScreen.callAlertButton.isHittable, "A button is not hittable")
    }
    
    func testCallHookahMan() {
        let app = XCUIApplication()
        app.launch()
        
        let loginScreen = LoginScreen()
        let restListScreen = loginScreen.tapOnLoginLaterButton()
        let restDetailsScreen = restListScreen.tapOnHakkasanRest()
        restDetailsScreen.tapOndetectTableButton()
        
        let selectTableSceen = SelectTableScreen()
        
        selectTableSceen.tapOnTextField()
        selectTableSceen.typeTableNumber(number: "3")
        selectTableSceen.tapOnSelectTableButton()
        
        restDetailsScreen.tapOnCallWaiterButton()
        restDetailsScreen.tapOnCallHookahMan()
        
        XCTAssertTrue(restDetailsScreen.waitForGotItAlert(), "There is no Got it alart")
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
