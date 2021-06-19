//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 22/05/21.
//

import SwiftUI

@main
struct LearnSwiftUIApp: App {
    
    @StateObject var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
//           CombinedView()
//            .environmentObject(modelData)
//            SAPLogo()
//            CircleLoadingAnimation()
//            CircleWaveAnimation()
            CatalogHome()
        }
    }
}
