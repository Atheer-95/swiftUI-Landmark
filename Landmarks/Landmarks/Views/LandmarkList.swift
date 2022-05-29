//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Atheer Al Zahrani on 24/10/1443 AH.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
          landmarks.filter { landmark in
              (!showFavoritesOnly || landmark.isFavorite)
          }
      }
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Landmark Details"){
                    LandmarkDetail(landmark: landmarks[0])
                }
                
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }

            }
            .navigationTitle("Landmarks")
        }
        
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//            ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                LandmarkList()
//                    .previewDevice(PreviewDevice(rawValue: deviceName))
//                    .previewDisplayName(deviceName)
//            }
    }
}