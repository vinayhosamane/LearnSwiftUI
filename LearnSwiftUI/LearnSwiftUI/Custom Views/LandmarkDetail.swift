//
//  LandmarkDetail.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 23/05/21.
//

import SwiftUI

struct LandmarkDetail: View {
    var landMark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landMark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landMark.image)
                .offset(y: -130.0)
                .padding(.bottom, -130.0)
            
            VStack(alignment: .leading) {
                Text(landMark.name)
                    .font(.title)
                
                HStack(alignment: .center) {
                    Text(landMark.park)
                    Spacer()
                    Text(landMark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landMark.park)")
                    .font(.title2)
                
                Text(landMark.description)
            }.padding()
            
        }
        .edgesIgnoringSafeArea(.top)
        .navigationTitle(landMark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var landMarks: [Landmark] {
        let modelData = ModelData()
        guard let landMarks = modelData.landMarks else {
            return []
        }
        return landMarks
    }
    
    static var previews: some View {
        LandmarkDetail(landMark: landMarks[0])
    }
}
