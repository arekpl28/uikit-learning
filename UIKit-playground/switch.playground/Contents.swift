import UIKit

//enum Phone {
//    case iPhone11Pro
//    case iPhoneSE
//    case pixel
//    case nokia
//}
//func getSeansOpinion(on phone: Phone) {
//
//    switch phone {
//    case .iPhone11Pro:
//        print("OK")
//    case .iPhoneSE:
//        print("No OK")
//    case .pixel:
//        print("pixel")
//    case .nokia:
//        print("Best")
//    }
//}
//
//getSeansOpinion(on: .pixel)

let matchmakingRank = 333

func determinePlayerLeague(from rank: Int){
    switch rank {
    case 0:
        print("Play the game to determine your league")
    case 1..<50:
        print("You are in BRONZE League")
    case 50..<200:
        print("You are in GOLD League")
    default:
        print("You are in leauge of your own. We don't know where you are")
    }
}

determinePlayerLeague(from: matchmakingRank)
