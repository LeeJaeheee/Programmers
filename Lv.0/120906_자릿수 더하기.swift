// https://school.programmers.co.kr/learn/courses/30/lessons/120906

import Foundation

func solution(_ n:Int) -> Int {
    return String(n).map { Int(String($0))! }.reduce(0, +)
}
