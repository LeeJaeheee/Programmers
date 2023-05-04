// https://school.programmers.co.kr/learn/courses/30/lessons/120816

import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    return Int(ceil(Double(n) / Double(slice)))
}
