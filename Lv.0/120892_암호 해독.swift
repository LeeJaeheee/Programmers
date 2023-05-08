// https://school.programmers.co.kr/learn/courses/30/lessons/120892

import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var rslt = ""
    let cipher = Array(cipher)
    for i in stride(from: code-1, to: cipher.count, by: code) {
        rslt.append(cipher[i])
    }
    return rslt
}


// 다른 풀이
import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    return cipher.enumerated().filter{ ($0.offset + 1) % code == 0 }.reduce("") { $0 + String($1.element) }
}

// (enumerated) https://developer.apple.com/documentation/swift/string/enumerated()
