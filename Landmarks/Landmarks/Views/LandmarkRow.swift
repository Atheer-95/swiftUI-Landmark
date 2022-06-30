//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Atheer Al Zahrani on 24/10/1443 AH.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    @Environment(\.dynamicTypeSize) var phoneFontSize
    
    
    var body: some View {
        
        
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio(contentMode: .fit)
            
            if phoneFontSize > .large {
                Text(landmark.name).font(.system(size: 20))
            }
            else{
                Text(landmark.name)
            }
            
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow).font(.system(size: 20))
            }
        }
    }
    
    struct LandmarkRow_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                LandmarkRow(landmark: Landmark.dummyData())
                    .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
                //                .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
                LandmarkRow(landmark: Landmark.dummyData())
                
            }
            .previewLayout(.fixed(width: 300, height: 200))
        }
    }
}
