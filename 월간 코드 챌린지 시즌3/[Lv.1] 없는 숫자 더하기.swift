// https://school.programmers.co.kr/learn/courses/30/lessons/86051

import Foundation

func solution(_ numbers:[Int]) -> Int {
    return (1...9).filter { !numbers.contains($0) }.reduce(0, +)
}
