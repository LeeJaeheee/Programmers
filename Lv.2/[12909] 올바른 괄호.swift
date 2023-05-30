// https://school.programmers.co.kr/learn/courses/30/lessons/12909

/* 효율성 테스트 시간초과
import Foundation

func solution(_ s:String) -> Bool
{
    var s = s
    
    while s.contains("()") {
        s.removeSubrange(s.range(of:"()")!)
    }
    
    if s == "" {
        return true
    } else {
        return false
    }

}
*/

import Foundation

func solution(_ s:String) -> Bool
{
    var s = s
    var opens = 0
    
    for c in s {
        if opens < 0 { return false }
        
        if c == "(" { opens += 1 } 
        if c == ")" { opens -= 1 }
    }
    
    if opens == 0 {
        return true
    } else {
        return false
    }
}

// (removeSubrange) https://developer.apple.com/documentation/swift/string/removesubrange(_:)-8y51u
// (range(of:)) https://developer.apple.com/documentation/swift/stringprotocol/range(of:options:range:locale:)
