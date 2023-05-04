// https://school.programmers.co.kr/learn/courses/30/lessons/120583

import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    return array.filter{ $0 == n }.count
}
