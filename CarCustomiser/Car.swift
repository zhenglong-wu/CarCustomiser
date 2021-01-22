//
//  Car.swift
//  CarCustomiser
//
//  Created by Zhenglong Wu on 20/01/2021.
//

import Foundation
import SwiftUI

struct Car {
    let make: String
    let model: String
    var topSpeed: Int
    var acceleration: Double
    var handling: Int
    var pfp: Int
    
    func displayStats() -> String{
        let allStats =
                       """
                        Make: \(make)
                        Model: \(model)
                        Top speed: \(topSpeed) km/h
                        Acceleration (0-100 km/h): \(String(format: "%.1f", acceleration))s
                        Handling: \(handling)
                        """
        return allStats
    }
    

    
}
