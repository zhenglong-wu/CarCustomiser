//
//  CarImageView1.swift
//  CarCustomiser
//
//  Created by Zhenglong Wu on 23/01/2021.
//

import SwiftUI

struct CarImageView1: View {
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

struct CarImageView1_Previews: PreviewProvider {
    static var previews: some View {
        CarImageView1()
    }
}
