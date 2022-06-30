//
//  ContentView.swift
//  Landmarks
//
//  Created by Atheer Al Zahrani on 23/10/1443 AH.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        LandmarkList(viewModel: ViewModel())
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
