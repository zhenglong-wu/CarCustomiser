//
//  CarCustomiserUITests.swift
//  CarCustomiserUITests
//
//  Created by Zhenglong Wu on 20/01/2021.
//

import XCTest

class CarCustomiserUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWhenBoughtTiresAndExhaustPackageOtherTwoUpgradesAreDisabled() throws {
        
        let app = XCUIApplication()
        app.launch()
        
        let tablesQuery = XCUIApplication().tables
        tablesQuery/*@START_MENU_TOKEN@*/.switches["Exhaust Manifold & Header - £6,100"]/*[[".cells[\"Exhaust Manifold & Header - £6,100\"].switches[\"Exhaust Manifold & Header - £6,100\"]",".switches[\"Exhaust Manifold & Header - £6,100\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.switches["Slick Tyres - £2,500"]/*[[".cells[\"Slick Tyres - £2,500\"].switches[\"Slick Tyres - £2,500\"]",".switches[\"Slick Tyres - £2,500\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        XCTAssertEqual(tablesQuery/*@START_MENU_TOKEN@*/.switches["Front/Rear Splitter + Rear Wing - £3,900"]/*[[".cells[\"Front\/Rear Splitter + Rear Wing - £3,900\"].switches[\"Front\/Rear Splitter + Rear Wing - £3,900\"]",".switches[\"Front\/Rear Splitter + Rear Wing - £3,900\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.isEnabled, false)
        XCTAssertEqual(tablesQuery/*@START_MENU_TOKEN@*/.switches["ICU + ECU Upgrade - £7,500"]/*[[".cells[\"ICU + ECU Upgrade - £7,500\"].switches[\"ICU + ECU Upgrade - £7,500\"]",".switches[\"ICU + ECU Upgrade - £7,500\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.isEnabled, false)
        
    }
    
    func testWhenBoughtTyresAndICUPackageOtherTwoUpgradesAreDisabledButNotTyresAndICU() throws {
        
        let app = XCUIApplication()
        app.launch()
        
        
        let tablesQuery = XCUIApplication().tables
        tablesQuery/*@START_MENU_TOKEN@*/.switches["Slick Tyres - £2,500"]/*[[".cells[\"Slick Tyres - £2,500\"].switches[\"Slick Tyres - £2,500\"]",".switches[\"Slick Tyres - £2,500\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.switches["ICU + ECU Upgrade - £7,500"]/*[[".cells[\"ICU + ECU Upgrade - £7,500\"].switches[\"ICU + ECU Upgrade - £7,500\"]",".switches[\"ICU + ECU Upgrade - £7,500\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        XCTAssertEqual(tablesQuery/*@START_MENU_TOKEN@*/.switches["Exhaust Manifold & Header - £6,100"]/*[[".cells[\"Exhaust Manifold & Header - £6,100\"].switches[\"Exhaust Manifold & Header - £6,100\"]",".switches[\"Exhaust Manifold & Header - £6,100\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.isEnabled, false)
        XCTAssertEqual(tablesQuery/*@START_MENU_TOKEN@*/.switches["Front/Rear Splitter + Rear Wing - £3,900"]/*[[".cells[\"Front\/Rear Splitter + Rear Wing - £3,900\"].switches[\"Front\/Rear Splitter + Rear Wing - £3,900\"]",".switches[\"Front\/Rear Splitter + Rear Wing - £3,900\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.isEnabled, false)
        
        XCTAssertEqual(tablesQuery/*@START_MENU_TOKEN@*/.switches["Slick Tyres - £2,500"]/*[[".cells[\"Slick Tyres - £2,500\"].switches[\"Slick Tyres - £2,500\"]",".switches[\"Slick Tyres - £2,500\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.isEnabled, true)
        XCTAssertEqual(tablesQuery/*@START_MENU_TOKEN@*/.switches["ICU + ECU Upgrade - £7,500"]/*[[".cells[\"ICU + ECU Upgrade - £7,500\"].switches[\"ICU + ECU Upgrade - £7,500\"]",".switches[\"ICU + ECU Upgrade - £7,500\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.isEnabled, true)
        
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
