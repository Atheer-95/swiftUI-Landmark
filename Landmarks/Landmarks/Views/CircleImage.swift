//
//  CircleImage.swift
//  Landmarks
//
//  Created by Atheer Al Zahrani on 23/10/1443 AH.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white , lineWidth: 4)
            }
            .shadow(radius: 4)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
