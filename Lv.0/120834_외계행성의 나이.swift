// https://school.programmers.co.kr/learn/courses/30/lessons/120834

import Foundation

func solution(_ age:Int) -> String {
    let arr = "abcdefghij".map{ String($0) }
    return String(age).map{ arr[Int(String($0))!] }.joined()
}


// 다른 풀이
import Foundation

func solution(_ age:Int) -> String {
    let start = Character("a").asciiValue!
    return "\(age)".map { String(UnicodeScalar(start + UInt8(String($0))!))}.joined()
}

// (asciiValue) https://developer.apple.com/documentation/swift/character/asciivalue
