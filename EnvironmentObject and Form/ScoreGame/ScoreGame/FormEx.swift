//
//  FormEx.swift
//  ScoreGame
//
//  Created by Atheer Al Zahrani on 12/01/1444 AH.
//

import SwiftUI

struct FormEx: View {
    @State var addf = true
    @State var color = 0
    @State var name = ""
    @State var isPresented = true
    @State private var showAlert = false

    var body: some View {
        
        Form {
            Section {
                Text("hi")
                Toggle("kdjcnwk", isOn: $addf)
            } header: {
                Text("first section")
            }
            
            Section {
                Picker("color schem", selection: $color) {
                    Text("red").tag(0)
                    Text("blue").tag(1)
                }
                .pickerStyle(.menu)
                
                TextField("right your name", text: $name)
                Button("Tap to show alert") {
                       showAlert = true
                   }
                   .alert(isPresented: $showAlert) {
                       Alert(
                           title: Text("\(name)Current Location Not Available"),
                           message: Text("Your current location can’t be " +
                                           "determined at this time.")
                       )
                   }
            } header: {
                Text("secound")
            }
            

         Section{
             ForEach(Range<Int>.init(uncheckedBounds: (1,1000))) { int in
                 Text("\(int)")
             }
         }
         
        }
    }
}

struct FormEx_Previews: PreviewProvider {
    static var previews: some View {
        FormEx()
    }
}
