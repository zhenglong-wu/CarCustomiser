//
//  CarImageView2.swift
//  CarCustomiser
//
//  Created by Zhenglong Wu on 23/01/2021.
//

import SwiftUI

struct CarImageView2: View {
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

struct CarImageView2_Previews: PreviewProvider {
    static var previews: some View {
        CarImageView2()
    }
}

