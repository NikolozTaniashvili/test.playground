//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 გვაქვს 1,5,10,20 და 50 თეთრიანი მონეტები. დაწერეთ ფუნქცია, რომელსაც გადაეცემა თანხა (თეთრებში) და აბრუნებს მონეტების მინიმალურ რაოდენობას, რომლითაც შეგვიძლია ეს თანხა დავახურდაოთ.
 */

func solution(n: Int) -> [Int] {
    var coins = [Int]()

    var i = 0
    while  i < n {
        if (i + 50) <= n {
            coins.append(50)
            i += 50
        } else if (i + 20) <= n {
            coins.append(20)
            i += 20
        } else if (i + 10) <= n {
            coins.append(10)
            i += 10
        } else if (i + 5) <= n {
            coins.append(5)
            i += 5
        } else if (i + 1) <= n {
            coins.append(1)
            i += 1
        }

    }

    return coins
}

print(solution(n: 66))
