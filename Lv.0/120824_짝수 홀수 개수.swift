// https://school.programmers.co.kr/learn/courses/30/lessons/120824

import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let even = num_list.filter { $0 % 2 == 0}.count
    return [even, num_list.count - even]
}
