//
//  LandmarkDetail.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 23/05/21.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData

    var landMark: Landmark
    
    var landMarkIndex: Int {
        modelData.landMarks.firstIndex(where: { $0.id == landMark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landMark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landMark.image)
                .offset(y: -130.0)
                .padding(.bottom, -130.0)
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text(landMark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landMarks[landMarkIndex].isFavorite)
                }
                
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
    static let modelData = ModelData()
    static var previews: some View {
        LandmarkDetail(landMark: modelData.landMarks[0])
            .environmentObject(modelData)
    }
}
