// https://school.programmers.co.kr/learn/courses/30/lessons/120899

import Foundation

func solution(_ array:[Int]) -> [Int] {
    let max = array.max()!
    return [max, array.index(of: max)!]
}
