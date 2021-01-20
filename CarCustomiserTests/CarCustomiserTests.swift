//
//  CarCustomiserTests.swift
//  CarCustomiserTests
//
//  Created by Zhenglong Wu on 20/01/2021.
//

import XCTest
@testable import CarCustomiser

class CarCustomiserTests: XCTestCase {

    func testNewCarGivesCarWithAllAttributesSet() {
        
        let car = Car(make: "Porsche", model: "718 Boxster", topSpeed: 185, acceleration: 3.9, handling: 7)
        
        XCTAssertEqual(car.make, "Porsche")
        XCTAssertEqual(car.model, "718 Boxster")
        XCTAssertEqual(car.topSpeed, 185)
        XCTAssertEqual(car.acceleration, 3.9)
        XCTAssertEqual(car.handling, 7)
        
        
    }
    
    

}
 
