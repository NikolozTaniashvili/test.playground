//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/*
 მოცემულია String რომელიც შედგება „(„ და „)“ ელემენტებისგან. დაწერეთ ფუნქცია რომელიც აბრუნებს ფრჩხილები არის თუ არა მათემატიკურად სწორად დასმული.
 */

func correctAnswer(word: String) -> Bool {
    for i in 0..<word.count {
        if i > 0 {
            if word[word.index(word.startIndex, offsetBy: i)] == word[word.index(word.startIndex, offsetBy: i - 1)] {
                return false
            }
        }
    }

    return true
}

print(correctAnswer(word: "()()()(()"))
