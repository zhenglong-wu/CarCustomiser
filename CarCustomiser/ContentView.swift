//
//  ContentView.swift
//  CarCustomiser
//
//  Created by Zhenglong Wu on 20/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    let car = Car(make: "Porsche", model: "718 Boxster", topSpeed: 185, acceleration: 3.9, handling: 7)
    
    var body: some View {
        Text("Car Make: \(car.make)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
     
