// https://school.programmers.co.kr/learn/courses/30/lessons/120893

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }.joined()
}

// (isUppercase) https://developer.apple.com/documentation/swift/character/isuppercase
// (uppercased) https://developer.apple.com/documentation/swift/character/uppercased()
