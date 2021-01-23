//
//  CarImageView3.swift
//  CarCustomiser
//
//  Created by Zhenglong Wu on 23/01/2021.
//

import SwiftUI

struct CarImageView3: View {
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

struct CarImageView3_Previews: PreviewProvider {
    static var previews: some View {
        CarImageView3()
    }
}
