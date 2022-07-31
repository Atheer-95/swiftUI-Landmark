//
//  choice page.swift
//  binding
//
//  Created by Muhannad Alnemer on 27/07/2022.
//

import SwiftUI

struct ChoicePage: View {
    @Binding var choice : Color
    @Environment(\.presentationMode) var presentation
    
    var colors : [String:Color] = [
        "blue"   : .blue,
        "green"  : .green,
        "white"  : .white,
        "brown"  : .brown,
        "cyan"   : .cyan,
        "purple" : .purple,
        "mint"   : .mint,
        "indigo" : .indigo,
        "pink"   : .pink,
        "red"    : .red,
        "gray"   : .gray,
        "black"  : .black
    ]
    
    
    var body: some View {
        List{
            ForEach(Array(colors.keys).sorted(), id: \.self) { color in
                Text(color)
                    .foregroundColor(colors[color])
                    .onTapGesture {
                        choice = colors[color]!
                        self.presentation.wrappedValue.dismiss()
                }
            }
        }
    }
}



struct ChoicePage_Previews: PreviewProvider {
    static var previews: some View {
        ChoicePage(choice: .constant(.blue))
    }
}
