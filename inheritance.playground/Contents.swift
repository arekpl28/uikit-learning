import UIKit

class Developer {
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?
    
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name       = name
        self.jobTitle   = jobTitle
        self.yearsExp   = yearsExp
    }
    
    func speakName() {
        print(name!)
    }
}

class iOSDeveloper: Developer {
    var favoriteFramework: String?
    
    func speakFavoriteFramework(){
        if let favoriteFramework = favoriteFramework {
            print(favoriteFramework)
        } else {
            print("I dont' have favorite framework")
        }
    }
    
    override func speakName() {
        print("\(name!) - \(jobTitle!)")
    }
}

let sean = iOSDeveloper(name: "Sean", jobTitle: "Coder", yearsExp: 5)

//
//sean.favoriteFramework = "ARKit"
//sean.speakFavoriteFramework()

sean.speakName()
