// https://school.programmers.co.kr/learn/courses/30/lessons/120811

import Foundation

func solution(_ array:[Int]) -> Int {
    return array.sorted()[array.count / 2]
}
