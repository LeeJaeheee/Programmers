// https://school.programmers.co.kr/learn/courses/30/lessons/120833

import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return (num1...num2).map { numbers[$0] }
}


// 다른 풀이
import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return Array(numbers[num1...num2])
}

// (ArraySlice) https://developer.apple.com/documentation/swift/arrayslice
