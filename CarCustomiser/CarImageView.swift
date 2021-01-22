//
//  CarImageView.swift
//  CarCustomiser
//
//  Created by Zhenglong Wu on 21/01/2021.
//

import SwiftUI

struct CarImageView {
    
    struct carImageView0: View {
        var body: some View {
            Image("718_spyder")
                .resizable()
                .aspectRatio(UIImage(named: "718_spyder")!.size, contentMode: .fit)
                .scaleEffect(1.05)
                .offset(x: 7, y: -9)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
        }
    }

    struct carImageView1: View {
        var body: some View {
            Image("911_Turbo_S")
                .resizable()
                .aspectRatio(UIImage(named: "911_Turbo_S")!.size, contentMode: .fit)
                .scaleEffect(1.15)
                .offset(x: 1, y: -18)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
        }
    }

    struct carImageView2: View {
        var body: some View {
            Image("911_RSR")
                .resizable()
                .aspectRatio(UIImage(named: "911_RSR")!.size, contentMode: .fit)
                .scaleEffect(1.15)
                .offset(x: -45, y: -2)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
        }
    }

    struct carImageView3: View {
        var body: some View {
            Image("918_Spyder")
                .resizable()
                .aspectRatio(UIImage(named: "918_Spyder")!.size, contentMode: .fit)
                .scaleEffect(1)
                .offset(x: -39, y: -2)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
        }
    }

    struct carImageView4: View {
        var body: some View {
            Image("919_Evo")
                .resizable()
                .aspectRatio(UIImage(named: "919_Evo")!.size, contentMode: .fit)
                .scaleEffect(1.15)
                .offset(x: -3, y: -20)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
        }
    }
}


/*
struct CarImageView_Previews: PreviewProvider {
    static var previews: some View {
        CarImageView911_Turbo_S()
    }
}



 Image("porsche-718")
     .frame(width: 50, height: 50, alignment: .center)
     .resizable()
 
 .aspectRatio(UIImage(named: "porsche-718")!.size, contentMode: .fill)
     .clipShape(Circle())
     .overlay(Circle().stroke(Color.white, lineWidth: 3))
 .shadow(radius: 10)
 */
