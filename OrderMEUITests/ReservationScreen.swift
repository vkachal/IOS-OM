//
//  ReservationScreen.swift
//  OrderMEUITests
//
//  Created by Administrator on 2/29/20.
//  Copyright © 2020 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class ReservationScreen: BaseScreen {
    
    override init() {
        super.init()
        visibility()
    }

    let monthDayPiker: XCUIElement = app.pickerWheels.element(boundBy: 0)
    let hourPiker: XCUIElement = app.pickerWheels.element(boundBy: 1)
    let minutePiker: XCUIElement = app.pickerWheels.element(boundBy: 2)
    let amPmPiker: XCUIElement = app.pickerWheels.element(boundBy: 3)

    func selectDate(month: String, day: String, hour: Int, minutes: Int, amPm: String) {
        let monthDay = "\(month) \(day)"
        
        guard hour > 0 && hour < 13 && minutes > 0 && minutes < 61 && minutes % 5 == 0 else {
            XCTFail("Hour: \(hour) or minutes: \(minutes) are not valid")
            return
        }
        
        monthDayPiker.adjust(toPickerWheelValue: monthDay)
        hourPiker.adjust(toPickerWheelValue: hour.description)
        minutePiker.adjust(toPickerWheelValue: minutes.description)
        amPmPiker.adjust(toPickerWheelValue: amPm)
    }
}

// MARK: visibility

extension ReservationScreen {
    
    func visibility() {
        guard monthDayPiker.waitForExistence(timeout: timeout) else {
            XCTFail("Reservation screen is not visible")
            return
        }
    }
}
