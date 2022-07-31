//
//  ContentView.swift
//  binding
//
//  Created by Muhannad Alnemer on 27/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColorChoice : Color = .brown
    
    
    var body: some View {
        NavigationView{
            ZStack{
                backgroundColorChoice

                NavigationLink{
                    ChoicePage(choice: $backgroundColorChoice)
                }label: {
                    Text("Change Color")
                        .foregroundColor(.white)
                }
            }
            .navigationBarHidden(true)
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
