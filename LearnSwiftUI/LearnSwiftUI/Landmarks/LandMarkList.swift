//
//  LandMarkList.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 23/05/21.
//

import SwiftUI

struct LandMarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
//    var landMarks: [Landmark] {
//        let modelData = ModelData()
//        return modelData.landMarks
//    }
    
    var filteredLandmarks: [Landmark] {
        modelData.landMarks.filter { (landmark) -> Bool in
            !showFavoritesOnly || landmark.isFavorite
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites Only")
                })

                ForEach(filteredLandmarks) { landMark in
                    NavigationLink(destination: LandmarkDetail(landMark: landMark)) {
                        LandmarkRow(landMark: landMark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
            .environmentObject(ModelData())
            //.previewDevice(PreviewDevice(rawValue: "iPhone SE"))
    }
}
