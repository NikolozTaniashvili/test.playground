//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/*
 მოცემულია მასივი, რომელიც შედგება მთელი რიცხვებისგან. დაწერეთ ფუნქცია რომელსაც გადაეცემა ეს მასივი და აბრუნებს მინიმალურ მთელ რიცხვს, რომელიც 0-ზე მეტია და ამ მასივში არ შედის.
 */

func minMissingNumber(A: [Int]) -> Int {
    var arr = A.filter { (e) -> Bool in
        return e > 0
    }
    arr = arr.sorted(by: { (l, r) -> Bool in
        return l < r
    })
    var index = 1
    for e in arr {
        if e == index {
            index += 1
        } else if e < index {
            continue
        } else {
            return index
        }
    }
    return index
}

print(minMissingNumber(A: [1, 2, 4, 5, 6]))
