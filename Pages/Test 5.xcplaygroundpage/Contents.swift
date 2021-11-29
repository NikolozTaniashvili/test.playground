//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/*
 გვაქვს n სართულიანი კიბე, ერთ მოქმედებაში შეგვიძლია ავიდეთ 1 ან 2 საფეხურით. დაწერეთ ფუნქცია რომელიც დაითვლის n სართულზე ასვლის ვარიანტების რაოდენობას.
 */

func climb(n: Int) -> Int {
    if n == 0 {
        return 0
    }
    if  n == 1 {
        return 1
    }
    if n == 2 {
        return 3
    }
    return climb(n: n - 1) + climb(n: n - 2)
}

print(climb(n: 9))
