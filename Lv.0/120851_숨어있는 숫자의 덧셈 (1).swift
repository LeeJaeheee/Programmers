// https://school.programmers.co.kr/learn/courses/30/lessons/120851

import Foundation

func solution(_ my_string:String) -> Int {
    return my_string.filter { $0.isNumber }.map { Int(String($0))! }.reduce(0, +)
}


// 다른 풀이
import Foundation

func solution(_ my_string:String) -> Int {
     return my_string.compactMap{Int(String($0))}.reduce(0,+)
}

// (compactMap) https://developer.apple.com/documentation/swift/string/compactmap(_:)
