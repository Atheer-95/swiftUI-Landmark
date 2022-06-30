//
//  ViewModel.swift
//  Landmarks
//
//  Created by Shady Kahaleh on 28/06/2022.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    
    func reverse() {
        landmarks.reverse()
    }
    
    
    private static func load<T: Decodable> (_ filename: String) -> T {
       
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename), Error: \(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error).")
        }
    }
    

}
