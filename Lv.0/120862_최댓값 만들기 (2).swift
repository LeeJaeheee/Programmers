// https://school.programmers.co.kr/learn/courses/30/lessons/120862

import Foundation

func solution(_ numbers:[Int]) -> Int {
    let n = numbers.sorted()
    return max(n[0] * n[1], n[n.count-2] * n[n.count-1])
}


// 다른 풀이
import Foundation

func solution(_ numbers:[Int]) -> Int {
    let arr = numbers.sorted(by: >)
    return max(arr.prefix(2).reduce(1, *), arr.suffix(2).reduce(1, *))
}

// (prefix) https://developer.apple.com/documentation/swift/array/prefix(_:)
// (suffix) https://developer.apple.com/documentation/swift/array/suffix(_:)
