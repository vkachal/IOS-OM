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
    
    let bookButton: XCUIElement = app.buttons["book_reservation"]
    
    let okNumberRequestButton: XCUIElement = app.alerts["We need your phone number"].scrollViews.otherElements.buttons["OK"]
    
    let numberTextField: XCUIElement = app.textFields["Phone number"]

    let phoneRequestMessage = elementsQuery.staticTexts["Write your phone number, please."]
    
    let numberOfPeopleRequestMessage = elementsQuery.staticTexts["We need the number of people"]
    
    let okPeopleRequestButton: XCUIElement = app.alerts["We need the number of people"].scrollViews.otherElements.buttons["OK"]
    
    let numberOfPeopleField: XCUIElement = app.textFields["Number of people"]
    
    let loginAlert: XCUIElement = app.alerts["You did not login"].scrollViews.otherElements.buttons["Login"]
    
    let cancelButton: XCUIElement = app.alerts["You did not login"].scrollViews.otherElements.buttons["Cancel"]
    
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
    
    func tapOnBookButton() {
        tap(bookButton)
    }
    
    func tapOnNumberTextField() {
        tap(numberTextField)
    }
    
    func typeNumber(number: String) {
        type(number, to: numberTextField)
    }
    
    func waitForNumberRequestAlert() -> Bool {
        okNumberRequestButton.waitForExistence(timeout: timeout)
    }
    
    func waitForPeopleRequestAlert() -> Bool {
        okPeopleRequestButton.waitForExistence(timeout: timeout)
    }
    
    func tapOnNumberOfPeopleField() {
        tap(numberOfPeopleField)
    }
    
    func typeNumberOfPeople(number: String) {
        type(number, to: numberOfPeopleField)
    }
    
    func waitForLoginAlert() -> Bool {
        loginAlert.waitForExistence(timeout: timeout)
    }
    
    func tapOnCancelButton() {
        tap(cancelButton)
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
