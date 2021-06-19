//
//  CircleLoadingAnimation.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 12/06/21.
//

import SwiftUI

struct CircleLoadingAnimation: View {
    @State var isCircleLoading = false

    var body: some View {
        HStack {
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(isCircleLoading ? .black : .gray)
                .scaleEffect(isCircleLoading ? 1.0: 0.5)
                .animation(Animation.easeInOut(duration: 1.0).repeatForever())
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(isCircleLoading ? .black : .gray)
                .animation(.linear(duration: 2.0))
                .scaleEffect(isCircleLoading ? 1.0: 0.5)
                .animation(Animation.easeInOut(duration: 1.0).repeatForever().delay(0.3))
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(isCircleLoading ? .black : .gray)
                .animation(.linear(duration: 2.0))
                .scaleEffect(isCircleLoading ? 1.0: 0.5)
                .animation(Animation.easeInOut(duration: 1.0).repeatForever().delay(0.6))
        }
        .onAppear(perform: {
            isCircleLoading = true
        })
    }
}

struct CircleLoadingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CircleLoadingAnimation()
    }
}
