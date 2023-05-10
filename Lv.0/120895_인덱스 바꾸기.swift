// https://school.programmers.co.kr/learn/courses/30/lessons/120895

import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var result = Array(my_string)
    result.swapAt(num1, num2)
    return String(result)
}

// (swapAt) https://developer.apple.com/documentation/swift/array/swapat(_:_:)
