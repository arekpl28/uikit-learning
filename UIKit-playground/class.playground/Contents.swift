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
//}
//
//let sean = Developer(name: "Sean", jobTitle: "IOS Engineer", yearsExp: 5)
//
//sean.name
//sean.jobTitle
//sean.yearsExp


class Developer {
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?
    
    init() {}
    
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name       = name
        self.jobTitle   = jobTitle
        self.yearsExp   = yearsExp
    }
    
    func speakName() {
        print(name!)
    }
}

let sean = Developer(name: "Sean", jobTitle: "IOS Engineer", yearsExp: 5)
sean.speakName()
//
//sean.name = "Joe"
//sean.jobTitle = "Coder"
//sean.yearsExp = 5
