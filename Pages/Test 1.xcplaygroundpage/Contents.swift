import UIKit

var greeting = "Hello, playground"
/*
 დაწერეთ ფუნქცია, რომელსაც გადაეცემა ტექსტი  და აბრუნებს პალინდრომია თუ არა. (პალინდრომი არის ტექსტი რომელიც ერთნაირად იკითხება ორივე მხრიდან).
 */
func isPalindrome(_ value: String) -> Bool {
    let len = value.count / 2

    for i in 0..<len {
        let start = value.index(value.startIndex, offsetBy: i)
        let end = value.index(value.endIndex, offsetBy: (i * -1) - 1)

        if value[start] != value[end] {
            return false
        }
    }
    return true
}

print(isPalindrome("ana"))
