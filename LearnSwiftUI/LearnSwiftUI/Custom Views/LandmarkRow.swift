//
//  LandmarkRow.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 23/05/21.
//

import SwiftUI

struct LandmarkRow: View {
    var landMark: Landmark
    
    var body: some View {
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landMark.name)
            Spacer()
        }.padding()
    }
}

struct LandmarkRow_Previews: PreviewProvider {

    static var landMarks: [Landmark] {
        let modelData = ModelData()
        guard let landMarks = modelData.landMarks else {
            return []
        }
        return landMarks
    }
    
    static var previews: some View {
        Group {
            LandmarkRow(landMark: LandmarkRow_Previews.landMarks[1])
            LandmarkRow(landMark: LandmarkRow_Previews.landMarks[2])
                
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }

}
