// https://school.programmers.co.kr/learn/courses/30/lessons/120909

import Foundation

func solution(_ n:Int) -> Int {
    let sqrt = Int(Double(n).squareRoot())
    return sqrt * sqrt == n ? 1 : 2
}

// (squareRoot) https://developer.apple.com/documentation/swift/double/squareroot() 
