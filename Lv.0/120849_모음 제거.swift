// https://school.programmers.co.kr/learn/courses/30/lessons/120849

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.filter { !["a", "e", "i", "o", "u"].contains($0) }
}


// 다른 풀이
import Foundation

func solution(_ my_string:String) -> String {
    return my_string.components(separatedBy: ["a", "e", "i", "o", "u"]).joined()
}

// (contains) https://developer.apple.com/documentation/swift/int/words-swift.struct/contains(_:)
// (components) https://developer.apple.com/documentation/swift/stringprotocol/components(separatedby:)-4j26n
