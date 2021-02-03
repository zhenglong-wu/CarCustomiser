//
//  CarCustomiserTests.swift
//  CarCustomiserTests
//
//  Created by Zhenglong Wu on 20/01/2021.
//

import XCTest


class CarCustomiserTests: XCTestCase {

    func testNewCarGivesCarWithAllAttributesSet() {
        
        let car = Car(make: "Porsche", model: "718 Spyder", topSpeed: 185, acceleration: 3.9, handling: 7)
        
        let correctResult = """
                                Make: Porsche
                                Model: 718 Spyder
                                Top speed: 185 km/h
                                Acceleration (0-100 km/h): 3.9s
                                Handling: 7
                                """
        
        XCTAssertEqual(car.make, "Porsche")
        XCTAssertEqual(car.displayStats(), correctResult)
    }
    
    
    

}
 
