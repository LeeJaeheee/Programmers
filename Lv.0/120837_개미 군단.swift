// https://school.programmers.co.kr/learn/courses/30/lessons/120837

import Foundation

func solution(_ hp:Int) -> Int {
    var hp = hp
    var result = 0
    result += hp / 5
    hp %= 5
    result += hp / 3
    hp %= 3
    result += hp
    return result
}
