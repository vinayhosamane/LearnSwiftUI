//
//  CircleImage.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 23/05/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .animation(.interactiveSpring(response: 0.5, dampingFraction: 0.86, blendDuration: 0.5))
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("tutlerock"))
    }
}
