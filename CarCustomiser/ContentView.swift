//
//  ContentView.swift
//  CarCustomiser
//
//  Created by Zhenglong Wu on 20/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    let starterCars = StarterCars()
    
    @State private var selectedCar: Int = 0
    
    var body: some View {
        
        ZStack {

            
            VStack (alignment: .leading) {
                
                
                Spacer()
                VStack (alignment: .leading, spacing: 20) {
            
                    Text("\(starterCars.cars[selectedCar].displayStats())")
                    Button("Next Car", action: {
                        selectedCar = Int.random(in: 0..<self.starterCars.cars.count)
                    })
                    Spacer()
                }
                .padding(.leading, 50)
                .font(.system(size: 16))
                Spacer()
            }
            Spacer()
        }
       
            
            
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
ZStack(alignment: .top) {
        
    HStack {
                
            VStack(alignment: .leading) {
                
                Text("Make: \(car.make)")
                Text("Model: \(car.model)")
                Text("Top speed: \(car.topSpeed)mph")
                Text("Acceleration (0-60): \(String(format: "%.1f", car.acceleration))s")
                Text("Handling: \(car.handling)")
                        
            }
            .font(.system(size: 15))
            .padding(35)
        }
    .frame(minWidth: 150, maxHeight: .infinity, alignment: .topLeading)
        

    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
*/

/*
 ZStack (alignment: .topLeading){
 
     VStack(alignment: .leading){
         
         VStack(alignment: .leading) {
             
             Text("Make: \(car.make)")
             Text("Model: \(car.model)")
             Text("Top speed: \(car.topSpeed)mph")
             Text("Acceleration (0-60): \(String(format: "%.1f", car.acceleration))s")
             Text("Handling: \(car.handling)")
                     
         }
         .font(.system(size: 15))
         Color.white
     }
     Color.white
 }
 Color.white
     .edgesIgnoringSafeArea(.all)
 
 */
