//
//  CarImageView4.swift
//  CarCustomiser
//
//  Created by Zhenglong Wu on 23/01/2021.
//

import SwiftUI

struct CarImageView4: View {
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

struct CarImageView4_Previews: PreviewProvider {
    static var previews: some View {
        CarImageView4()
    }
}
