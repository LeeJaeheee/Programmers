// https://school.programmers.co.kr/learn/courses/30/lessons/120836

import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter{ n % $0 == 0 }.count
}
