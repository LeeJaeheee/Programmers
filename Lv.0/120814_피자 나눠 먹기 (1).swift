// https://school.programmers.co.kr/learn/courses/30/lessons/120814

import Foundation

func solution(_ n:Int) -> Int {
    return n % 7 == 0 ? n / 7 : n / 7 + 1
}
