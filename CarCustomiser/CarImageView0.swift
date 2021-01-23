//
//  CarImageView.swift
//  CarCustomiser
//
//  Created by Zhenglong Wu on 21/01/2021.
//

import SwiftUI

struct CarImageView0: View {
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



struct CarImageView_Previews: PreviewProvider {
    static var previews: some View {
        CarImageView0()
    }
}

