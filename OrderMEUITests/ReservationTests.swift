//
//  REservationTests.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/29/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class ReservationTests: BaseTests {
    
    func testMakeReservation () {
        let loginScreen = LoginScreen()
        let restListScreen = loginScreen.tapOnLoginLaterButton()
        let restDetailScreen = restListScreen.tapOnHakkasanRest()
        restDetailScreen.choose(option: .makeReservation)
            
        let reservationScreen = ReservationScreen()

        let today = Date()
        
        guard let futerDate = today.plus(days: 5) else {
            XCTFail("Can not crate a date")
            return
        }
        
        let day = futerDate.day
        let month = futerDate.month
        
        reservationScreen.selectDate(month: month, day: day, hour: 10, minutes: 30, amPm: "PM")

    }
    
    func testReservationPhoneRequest() {
    let loginScreen = LoginScreen()
    let restListScreen = loginScreen.tapOnLoginLaterButton()
    let restDetailScreen = restListScreen.tapOnHakkasanRest()
    restDetailScreen.choose(option: .makeReservation)
        
    let reservationScreen = ReservationScreen()
    reservationScreen.tapOnBookButton()
        
        XCTAssertEqual("Write your phone number, please.", reservationScreen.phoneRequestMessage.label, "The message is incorrect")
        
        XCTAssertTrue(reservationScreen.waitForNumberRequestAlert(), "There is no ok button")
    }
    
    func testReservationPepleNumberRequest() {
        let loginScreen = LoginScreen()
        let restListScreen = loginScreen.tapOnLoginLaterButton()
        let restDetailScreen = restListScreen.tapOnHakkasanRest()
        restDetailScreen.choose(option: .makeReservation)
            
        let reservationScreen = ReservationScreen()
        reservationScreen.tapOnNumberTextField()
        reservationScreen.typeNumber(number: "4564564567")
        reservationScreen.typeNumber(number: "\n")
        reservationScreen.tapOnBookButton()
        
        XCTAssertEqual("We need the number of people", reservationScreen.numberOfPeopleRequestMessage.label, "The message is incorrect")
        
        XCTAssertTrue(reservationScreen.waitForPeopleRequestAlert(), "There is no ok button")
    }
}
