//
//  CircleWaveAnimation.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 12/06/21.
//

import SwiftUI

struct CircleWaveAnimation: View {
    
    @State var isLoading = false
    
    var body: some View {
        ZStack {
            Image(systemName: isLoading ? "house.fill" : "house")
                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                    isLoading.toggle()
                })
                .overlay(
                    ZStack {
                        Circle()
                            .fill(Color.red)
                            .scaleEffect(isLoading ? 1.0 : 0.0)
                        Circle()
                            .fill(Color.orange)
                            .scaleEffect(isLoading ? 1.5 : 0.0)
                        Circle()
                            .fill(Color.yellow)
                            .scaleEffect(isLoading ? 2.0 : 0.0)
                    }
                    .opacity(isLoading ? 0.2 : 0.0)
                    .animation(isLoading ? Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true) : .none)
                )
        }
    }
}

struct CircleWaveAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CircleWaveAnimation()
    }
}
