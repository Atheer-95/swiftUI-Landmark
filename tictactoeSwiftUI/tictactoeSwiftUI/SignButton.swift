import SwiftUI

struct SignButton: View {
    var sign: Sign
    var body: some View {
        Button(action: {
                
            }, label: {
                Text(sign.rawValue)
            })
    }
}

struct SignButton_Previews: PreviewProvider {
    static var previews: some View {
        SignButton(sign: .x)
    }
}
