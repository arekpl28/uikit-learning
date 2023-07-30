import UIKit

//var ages: [Int] = []

var ages = [21, 55, 19, 25, 73, 80, 66, 43]

ages.count
ages.first
ages.last
ages[2]

ages.append(99)
print(ages)

ages.insert(33, at: 0)
print(ages)

ages.sort()
print(ages)

ages.reverse()
print(ages)

ages.shuffle()
print(ages)
