//
//  ScoreView.swift
//  ScoreGame
//
//  Created by Atheer Al Zahrani on 12/01/1444 AH.
//

import SwiftUI

struct ScoreView: View {
    @EnvironmentObject var settings: GameScore
    
    var body: some View {
        Text("Score: \(settings.score)")
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
