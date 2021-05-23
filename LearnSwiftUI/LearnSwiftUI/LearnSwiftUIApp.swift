//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 22/05/21.
//

import SwiftUI

@main
struct LearnSwiftUIApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

struct LearnSwiftUIApp_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130.0)
                .padding(.bottom, -130.0)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack(alignment: .center) {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                
                Text("Description goes here!")
            }.padding()
            
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.top)
        
    }
}
