import UIKit

//enum Phone {
//    case IPhone11Pro, IPhoneSE, pixel, nokia
//}

//enum Phone {
//    case iPhone11Pro
//    case iPhoneSE
//    case pixel
//    case nokia
//}
//func getSeansOpinion(on phone: Phone) {
//    if phone == .iPhone11Pro {
//        print("OK")
//    } else if phone == .iPhoneSE {
//        print("No OK")
//    } else if phone == .pixel {
//        print("pixel")
//    } else {
//        print("Best")
//    }
//}

enum Phone: String {
    case iPhone11Pro    = "OK"
    case iPhoneSE       = "No OK"
    case pixel          = "pixel"
    case nokia          = "Best"
}

func getSeansOpinion(on phone: Phone) {
    print(phone.rawValue)
}

getSeansOpinion(on: .pixel)

