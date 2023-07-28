import UIKit

//var ages = [21, 45, 18, 71, 44, 23, 17]
var ages: [Int] = []
ages.sort()

// if let

if let oldestAge = ages.last {
    print("The oldest age is \(oldestAge)")
} else {
    print("There is no oldest age. You must have no students")
}

// nil coalescing
let oldestAge = ages.last ?? 999

// guard statement

func getOldestAge() {
    guard let oldestAge = ages.last else {
        return
    }
    
    print("\(oldestAge) is the oldest age.")
}

getOldestAge()

// force unwrap
//let oldestAge1 = ages.last!
