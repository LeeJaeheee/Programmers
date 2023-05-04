// https://school.programmers.co.kr/learn/courses/30/lessons/120817

import Foundation

func solution(_ numbers:[Int]) -> Double {
    return Double(numbers.reduce(0, +)) / Double(numbers.count)
}
