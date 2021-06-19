//
//  SAPLogo.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 09/06/21.
//

import SwiftUI

struct SAPLogoShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let breakPoint = rect.width * 0.55
        // top left corner
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.height))
        path.addLine(to: CGPoint(x: breakPoint, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        return path
    }
    
}

struct SAPLogo: View {
    @State var appear = false
    
    @State var imageScale = true
    
    var logoGradient = LinearGradient(gradient: Gradient(colors:[Color("SAPLogoBG"), .yellow]), startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        ZStack {
            //logoGradient
            HStack(spacing: 20) {
                HStack(alignment: .center) {
                    Text("I")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)

                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .scaleEffect(imageScale ? CGSize(width: 1.0, height: 1.0) : CGSize(width: 0.5, height: 0.5))
                        .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
                        .onAppear(perform: {
                            imageScale = false
                        })
                    
                    ZStack {
                        Image(systemName: "house")
                            .foregroundColor(.black)
                        
                        Circle()
                            .frame(width: 5, height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .scaleEffect(imageScale ? CGSize(width: 1.5, height: 1.5) : CGSize(width: 0.9, height: 0.9))
                            .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .offset(x: 5.0, y: -10.0)
                    }

                }

                VStack {
                    Text("SAP")
                        .kerning(-3)
                        .foregroundColor(Color.white)
                        .fontWeight(.heavy)
                        .font(.system(size: 43.0))
                        .padding([.trailing], 32)
                        .padding([.top, .bottom], -8)
                }
                .background(SAPLogoShape()
                                .fill(logoGradient))
            }
        }
        .ignoresSafeArea()
        
    }
    
    func getCircleView() -> some View {
        ZStack {
            Circle()
                //            .trim(from: 0.2, to: 1)
                .stroke(logoGradient, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                .frame(width: 44, height: 44)
                .rotationEffect(Angle(degrees: appear ? 360 : 0))
                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
                .onAppear {
                    appear = true
                }
            Text("VH")
                .fontWeight(.heavy)
                .font(.subheadline)
        }
      
    }
    
}


struct SAPLogo_Previews: PreviewProvider {
    static var previews: some View {
        SAPLogo()
    }
}
