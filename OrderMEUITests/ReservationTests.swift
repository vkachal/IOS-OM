//
//  ReservationTests.swift
//  OrderMEUITests
//
//  Created by Галя Мельник on 2/29/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class ReservationTests: BaseTests {
    func testMakeReservation() {
        let loginScreen = LoginScreen()
        let restListScreen = loginScreen.tapOnLoginLaterButton()
        let restDetailsScreen = restListScreen.tapOnHakkasanRest()
        restDetailsScreen.tapOnReservationButton()
        
        
        
        let datePickersQuery = app2.datePickers
        let pickerWheel = datePickersQuery/*@START_MENU_TOKEN@*/.pickerWheels["7 o’clock"]/*[[".pickers.pickerWheels[\"7 o’clock\"]",".pickerWheels[\"7 o’clock\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        pickerWheel.swipeUp()
        datePickersQuery/*@START_MENU_TOKEN@*/.pickerWheels["10 o’clock"]/*[[".pickers.pickerWheels[\"10 o’clock\"]",".pickerWheels[\"10 o’clock\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        pickerWheel.swipeUp()
        datePickersQuery/*@START_MENU_TOKEN@*/.pickerWheels["Today"]/*[[".pickers.pickerWheels[\"Today\"]",".pickerWheels[\"Today\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        pickerWheel.swipeUp()
        datePickersQuery/*@START_MENU_TOKEN@*/.pickerWheels["45 minutes"]/*[[".pickers.pickerWheels[\"45 minutes\"]",".pickerWheels[\"45 minutes\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
        app/*@START_MENU_TOKEN@*/.buttons["book_reservation"]/*[[".buttons[\"Book\"]",".buttons[\"book_reservation\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.alerts["We need your phone number"].scrollViews.otherElements.buttons["OK"].tap()
        
    }
}
