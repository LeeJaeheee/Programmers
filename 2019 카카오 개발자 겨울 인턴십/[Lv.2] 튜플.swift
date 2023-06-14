// https://school.programmers.co.kr/learn/courses/30/lessons/64065

// 집합(Set) 이용한 풀이
import Foundation

func solution(_ s:String) -> [Int] {
    var s = s.components(separatedBy: ["{","}"])
    .filter {$0 != "" && $0 != ","}
    .map {$0.split(separator: ",").map{Int($0)!}}
    .sorted {$0.count < $1.count}

    var result: [Int] = []
    s.forEach { result += Array(Set($0).subtracting(Set(result))) }
    return result
}

// 다른 풀이
import Foundation

func solution(_ s:String) -> [Int] {
    var counts: [Int: Int] = [:]
    var s = s.components(separatedBy: ["{","}"]).filter {$0 != "" && $0 != ","}
    .map {$0.split(separator: ",")
          .map{ n -> Int in counts[Int(n)!, default: 0] += 1; return Int(n)!}}
    
    return counts.keys.sorted {counts[$0]! > counts[$1]!}
}

// (subtracting) https://developer.apple.com/documentation/swift/set/subtracting(_:)-3n4lc
