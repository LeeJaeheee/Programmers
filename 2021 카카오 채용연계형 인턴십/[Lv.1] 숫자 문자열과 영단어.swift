// https://school.programmers.co.kr/learn/courses/30/lessons/81301

import Foundation

func solution(_ s:String) -> Int {
    var s = s
    let nums: [String: String] = ["zero": "0", "one": "1", "two": "2", "three": "3", "four": "4", 
                               "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"]
    for (k, v) in nums {
        s = s.replacingOccurrences(of: k, with: v)
    }

    return Int(s)!
}

// (replacingOccurrences) https://developer.apple.com/documentation/swift/stringprotocol/replacingoccurrences(of:with:options:range:)
