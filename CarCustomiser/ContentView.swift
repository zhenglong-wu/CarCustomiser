//
//  ContentView.swift
//  CarCustomiser
//
//  Created by Zhenglong Wu on 20/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    
    @State public var starterCars = StarterCars()
    
    @State var selectedCar: Int = 0 {
        didSet{
            if selectedCar >= starterCars.cars.count{
                selectedCar = 0
            }
        }
    }
    
    @State private var exhaustPackage = false
    @State private var tyresPackage = false
    @State private var aeroPackage = false
    @State private var icuPackage = false
    @State private var remainingFunds: Int = 25000
    
    var exhaustPackageEnabled: Bool {
        if remainingFunds < 8200 {
            return false
        }
        else{
            return true
        }
    }
    
    var tyresPackageEnabled: Bool {
        if remainingFunds < 5300 {
            return false
        }
        else{
            return true
        }
    }
    
    var aeroPackageEnabled: Bool {
        if remainingFunds < 3900 {
            return false
        }
        else{
            return true
        }
    }
    
    var icuPackageEnabled: Bool {
        if remainingFunds < 9800 {
            return false
        }
        else{
            return true
        }
    }
    
    var body: some View {
        
        let exhaustPackageBinding = Binding <Bool> (
            
            get: {self.exhaustPackage},
            set: {newValue in
                self.exhaustPackage = newValue
                if newValue == true{
                    starterCars.cars[selectedCar].topSpeed+=13
                    remainingFunds -= 8200
                }
                else{
                    starterCars.cars[selectedCar].topSpeed-=13
                    remainingFunds += 8200
                }
            }
        )
        
        let tyresPackageBinding = Binding <Bool> (
            
            get: {self.tyresPackage},
            set: {newValue in
                self.tyresPackage = newValue
                if newValue == true{
                    starterCars.cars[selectedCar].acceleration-=0.2
                    remainingFunds -= 5300
                }
                else{
                    starterCars.cars[selectedCar].acceleration+=0.2
                    remainingFunds += 5300
                }
            }
        )
        
        let aeroPackageBinding = Binding <Bool> (
            
            get: {self.aeroPackage},
            set: {newValue in
                self.aeroPackage = newValue
                if newValue == true{
                    starterCars.cars[selectedCar].handling+=1
                    remainingFunds -= 3900
                }
                else{
                    starterCars.cars[selectedCar].handling-=1
                    remainingFunds += 3900
                }
            }
        )
        
        let icuPackageBinding = Binding <Bool> (
            
            get: {self.icuPackage},
            set: {newValue in
                self.icuPackage = newValue
                if newValue == true{
                    starterCars.cars[selectedCar].topSpeed+=7
                    starterCars.cars[selectedCar].acceleration-=0.1
                    remainingFunds -= 9800
                }
                else{
                    starterCars.cars[selectedCar].topSpeed-=7
                    starterCars.cars[selectedCar].acceleration+=0.1
                    remainingFunds += 9800
                }
            }
        )
        
        ZStack {

            
            VStack {
                
                if selectedCar == 0{
                    carImageView
                }
                Spacer()
                Form {
                    VStack (alignment: .leading, spacing: 20) {
                
                        Text("\(starterCars.cars[selectedCar].displayStats())")
                        HStack{
                            Button("Next Car", action: {
                                selectedCar += 1
                                resetDisplayNext(selectedCar: selectedCar)
                            })
                        }
                    }
                    .font(.system(size: 16))
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                
                    .font(.system(size: 18))
                    Section {
                        Toggle("Exhaust Manifold & Header - £8,200", isOn: exhaustPackageBinding)
                            .disabled(!exhaustPackageEnabled)
                        Toggle("Slick Tyres - £5,300", isOn: tyresPackageBinding)
                            .disabled(!tyresPackageEnabled)
                        Toggle("Front/Rear Splitter + Rear Wing - £3,900", isOn: aeroPackageBinding)
                            .disabled(!aeroPackageEnabled)
                        Toggle("ICU + ECU Upgrade - £9,800", isOn: icuPackageBinding)
                            .disabled(!icuPackageEnabled)
                        Button("Reset", action: {
                            resetDisplayCurrent(selectedCar: selectedCar)
                        })
        
                        
                    }
                    .font(.system(size: 15))

                    

                
                }
                Text("Remaining Funds: \(remainingFunds)")
                    .bold()
                    .baselineOffset(20)
                    .padding(.top, 35)
            
            }
   

        }
       
            
            
    }
    
    func resetDisplayNext(selectedCar: Int){
        if selectedCar-1 < 0{
            remainingFunds = 25000
            starterCars.cars[0].topSpeed = starterCars.carsDefault[0].topSpeed
            starterCars.cars[0].acceleration = starterCars.carsDefault[0].acceleration
            starterCars.cars[0].handling = starterCars.carsDefault[0].handling
            exhaustPackage = false
            tyresPackage = false
            aeroPackage = false
            icuPackage = false
            
            
        }
        else{
            remainingFunds = 25000
            starterCars.cars[selectedCar-1].topSpeed = starterCars.carsDefault[selectedCar-1].topSpeed
            starterCars.cars[selectedCar-1].acceleration = starterCars.carsDefault[selectedCar-1].acceleration
            starterCars.cars[selectedCar-1].handling = starterCars.carsDefault[selectedCar-1].handling
            exhaustPackage = false
            tyresPackage = false
            aeroPackage = false
            icuPackage = false
        }
        
    }
    
    func resetDisplayCurrent(selectedCar: Int){
        starterCars.cars[selectedCar].topSpeed = starterCars.carsDefault[selectedCar].topSpeed
        starterCars.cars[selectedCar].acceleration = starterCars.carsDefault[selectedCar].acceleration
        starterCars.cars[selectedCar].handling = starterCars.carsDefault[selectedCar].handling
        remainingFunds = 25000
        exhaustPackage = false
        tyresPackage = false
        aeroPackage = false
        icuPackage = false
        
    
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
