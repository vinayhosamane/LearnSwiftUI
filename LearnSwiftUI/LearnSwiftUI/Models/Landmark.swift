//
//  Landmark.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 23/05/21.
//

import Foundation
import SwiftUI
import MapKit

struct Landmark: Hashable, Codable, Identifiable {

    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {

        var latitude: Double
        var longitude: Double

    }

}

final class ModelData: ObservableObject {

    @Published var landMarks: [Landmark] = []
    
    init() {
        landMarks = load("landmarkData.json")
    }
    
    func load<T: Decodable>(_ fileName: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
            fatalError("Couldn't find \(fileName) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch let error {
            fatalError("Couldn't load \(fileName) from main bundle:\n \(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            let models =  try decoder.decode(T.self, from: data)
            return models
        } catch {
            fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
        }
    }
    
}
