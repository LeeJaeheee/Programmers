// https://school.programmers.co.kr/learn/courses/30/lessons/70129

import Foundation

func solution(_ s:String) -> [Int] {
    var str = s
    var result = [0, 0]
    
    while str != "1" {
        var count = str.count
        var count1 = str.filter { $0 == "1" }.count
        result[1] += count - count1
        
        str = String(count1, radix: 2)
        result[0] += 1
    }
    
    return result
}

// (init(_:radix:uppercase:)) https://developer.apple.com/documentation/swift/string/init(_:radix:uppercase:)
