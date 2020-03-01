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
}
