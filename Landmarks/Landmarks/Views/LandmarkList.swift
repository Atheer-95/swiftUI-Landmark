//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Atheer Al Zahrani on 24/10/1443 AH.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly = false
    
    @ObservedObject var viewModel: ViewModel
    
    @Environment(\.colorScheme) private var colorScheme

    
    var filteredLandmarks: [Landmark] {
        viewModel.landmarks.filter { landmark in
              (!showFavoritesOnly || landmark.isFavorite)
          }
      }
   
    var body: some View {
        NavigationView {
            List{
                Button {
                    viewModel.reverse()
                } label: {
                    Text("Reverse model").foregroundColor(colorScheme == .dark ? .red : .green)
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
            LandmarkList(viewModel: ViewModel())
            .preferredColorScheme(.light)
        LandmarkList(viewModel: ViewModel())
        .preferredColorScheme(.dark)
//                    .previewDevice(PreviewDevice(rawValue: deviceName))
//                    .previewDisplayName(deviceName)
//            }
    }
}
