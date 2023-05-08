// https://school.programmers.co.kr/learn/courses/30/lessons/120905

import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    return numlist.filter { $0 % n == 0 }
}
