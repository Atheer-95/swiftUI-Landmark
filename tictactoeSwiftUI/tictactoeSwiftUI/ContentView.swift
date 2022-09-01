//
//  ContentView.swift
//  tictactoeSwiftUI
//
//  Created by Muhannad Alnemer on 01/09/2022.
//

import SwiftUI

struct GameView: View {
//    @ObservedObject var game: Game
    var body: some View {
    VStack {
        HStack{
            Button(action: {
                
            }, label: {
                Text("one")
                
            })

             Button(action: {
                
            }, label: {
                Text("two")
            })

             Button(action: {
                
            }, label: {
                Text("three")
            })  
        } 
        HStack{
            Button(action: {
                
            }, label: {
                Text("four")
            })

             Button(action: {
                
            }, label: {
                Text("five")
            })

             Button(action: {
                
            }, label: {
                Text("six")
            })
            }         

        
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
