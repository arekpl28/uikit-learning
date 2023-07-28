import UIKit

let allStars = ["James", "Davis", "Harden", "Doncic", "Leonard"]

//for player in allStars {
//    print(player)
//}

//for player in allStars where player == "Harden" {
//    print(player)
//}

//for i in 0..<25 {
//    print(i)
//}

var randomInts : [Int] = []

for _ in 0..<25 {
    let randomNumer = Int.random(in: 0...100)
    randomInts.append(randomNumer)
}

print(randomInts)
