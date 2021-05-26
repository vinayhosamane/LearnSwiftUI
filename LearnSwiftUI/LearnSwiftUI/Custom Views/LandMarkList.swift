//
//  LandMarkList.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 23/05/21.
//

import SwiftUI

struct LandMarkList: View {
    var landMarks: [Landmark] {
        let modelData = ModelData()
        guard let landMarks = modelData.landMarks else {
            return []
        }
        return landMarks
    }
    
    var filteredLandmarks: [Landmark] {
        landMarks.filter { (landmark) -> Bool in
            !showFavoritesOnly || landmark.isFavorite
        }
    }
    
    @State private var showFavoritesOnly = false
    
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
            //.previewDevice(PreviewDevice(rawValue: "iPhone SE"))
    }
}
