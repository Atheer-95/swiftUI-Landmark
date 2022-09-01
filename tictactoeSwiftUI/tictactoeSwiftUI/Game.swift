import SwiftUI

class Game: ObservedObject{

    @Published var boxes = [Box]()
    var winner: Player
    var loser: Player
    var players =  [Player]()
    var score = [Player: Int]()
    var round: Int


    func CheckWinner() {
        
    }
    func fillBoxes() {
        for i in 1...9 {
            boxes.append(Box(sign: ))
        }
    }



    

}