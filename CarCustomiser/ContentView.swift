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
        
        ZStack(alignment: .top) {
                
            HStack {
                        
                    VStack(alignment: .leading) {
                        
                        Text("Make: \(car.make)")
                        Text("Model: \(car.model)")
                        Text("Top speed: \(car.topSpeed)mph")
                        Text("Acceleration (0-60): \(car.acceleration)s")
                        Text("Handling: \(car.handling)")
                                
                    }
                    .font(.system(size: 15))
                    .padding(35)
                }
            .frame(minWidth: 150, maxHeight: .infinity, alignment: .topLeading)
                

            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)

    }
                
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



