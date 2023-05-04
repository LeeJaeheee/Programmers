// https://school.programmers.co.kr/learn/courses/30/lessons/120825

import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return my_string.map { 
        var rslt = ""
        for _ in (0..<n) {
            rslt += String($0)
        }
        return rslt
    }.joined()
}


// 다른 풀이
import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return my_string.map( { 
        String(repeating: $0, count: n)
    } ).joined()
}

// (init(repeating:count:)) https://developer.apple.com/documentation/swift/string/init(repeating:count:)-23xjt
