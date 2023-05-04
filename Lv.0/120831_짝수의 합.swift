// https://school.programmers.co.kr/learn/courses/30/lessons/120831

import Foundation

func solution(_ n:Int) -> Int {
    var rslt = 0
    for i in stride(from: 2, through: n, by: 2) {
        rslt += i
    }
    return rslt
}

// 다른 풀이
func solution(_ n: Int) -> Int { (0...n).filter { $0 % 2 == 0 }.reduce(0, +) }

// https://developer.apple.com/documentation/swift/string/filter(_:)
// https://developer.apple.com/documentation/swift/array/reduce(_:_:)
