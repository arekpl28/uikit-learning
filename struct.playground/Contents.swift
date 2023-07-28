import UIKit

//class Developer {
//    var name: String
//    var jobTitle: String
//    var yearsExp: Int
//
//    init(name: String, jobTitle: String, yearsExp: Int) {
//        self.name       = name
//        self.jobTitle   = jobTitle
//        self.yearsExp   = yearsExp
//    }
//
//}
//
//var sean = Developer(name: "Sean", jobTitle: "Coder", yearsExp: 3)
//
//var joe = sean

//joe.name = "Joe"
//sean.name

struct Developer {
    var name: String
    var jobTitle: String
    var yearsExp: Int
    
}

var sean = Developer(name: "Sean", jobTitle: "Coder", yearsExp: 3)

var joe = sean
joe.name = "Joe"

sean.name
