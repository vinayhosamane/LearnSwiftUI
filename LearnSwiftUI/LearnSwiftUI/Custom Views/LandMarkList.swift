//
//  LandMarkList.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 23/05/21.
//

import SwiftUI

struct LandMarkList: View {
    static var landMarks: [Landmark] {
        let modelData = ModelData()
        guard let landMarks = modelData.landMarks else {
            return []
        }
        return landMarks
    }
    
    var body: some View {
        NavigationView {
            List(LandMarkList.landMarks) { (landMark) in
                NavigationLink(destination: LandmarkDetail(landMark: landMark)) {
                    LandmarkRow(landMark: landMark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
    }
}
