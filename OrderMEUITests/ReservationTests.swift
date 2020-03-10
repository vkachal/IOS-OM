//
//  ReservationTests.swift
//  OrderMEUITests
//
//  Created by Admin on 3/8/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class ReservationTests: BaseTests {

    func testMakeReservation () {
        let logInScreen = LogInScreen()
        let listRestScreen = logInScreen.tapOnLogInLaterButton()
        let optionRestScreen = listRestScreen.tapOnHakkasanRest()
//        optionRestScreen.choose(option: .makeReservation)

        let reservationScreen = optionRestScreen.tapMakeReservation()

        let today = Date()

        guard let futerDate = today.plus(days: 5) else {
            XCTFail("Can not crate a date")
            return
        }
            let day = futerDate.day
            let month = futerDate.month

            reservationScreen.selectDate(month: month, day: day, hour: 10, minutes: 30, amPm: "PM")

        }
    }

