// https://school.programmers.co.kr/learn/courses/30/lessons/120847

import Foundation

func solution(_ numbers:[Int]) -> Int {
    let descendingNumbers = numbers.sorted(by: >)
    return descendingNumbers[0] * descendingNumbers[1]
}

// (sorted) https://developer.apple.com/documentation/swift/array/sorted()
