import UIKit

var ages = [21, 55, 19, 25, 73, 80, 66, 43, 19]

//var agesSet: Set<Int> = []

var agesSet = Set(ages)


agesSet.contains(19)

agesSet.insert(102)
print(agesSet)
