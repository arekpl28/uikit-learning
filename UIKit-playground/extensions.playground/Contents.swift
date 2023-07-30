import UIKit

extension String {
    func removeWhitespace() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}

let alphabet = "A B C D E F"

print(alphabet.removeWhitespace())
