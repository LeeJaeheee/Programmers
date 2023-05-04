// https://school.programmers.co.kr/learn/courses/30/lessons/120903

import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    return s1.filter { s2.contains($0) }.count
}


// 다른 풀이
import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    return Set(s1).intersection(Set(s2)).count
}

// (intersection) https://developer.apple.com/documentation/swift/set/intersection(_:)-1zh8f
