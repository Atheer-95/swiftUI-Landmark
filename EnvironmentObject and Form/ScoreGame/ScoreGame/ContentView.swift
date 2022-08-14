//
//  ContentView.swift
//  ScoreGame
//
//  Created by Atheer Al Zahrani on 12/01/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var settings = GameScore()
    var body: some View {
        NavigationView {
            VStack {
                Button("Increse score"){
                    settings.score += 1
                }
                NavigationLink(destination: ScoreView()) {
                    Text("show score")
                }
            }
        }
        .environmentObject(settings)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}


class GameScore: ObservableObject {
    @Published var score = 10
    var name = ""
}
