// https://school.programmers.co.kr/learn/courses/30/lessons/120813

import Foundation

func solution(_ n:Int) -> [Int] {
    return (1...n).filter { $0 % 2 == 1 }
}
