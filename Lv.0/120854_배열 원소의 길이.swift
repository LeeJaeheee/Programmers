// https://school.programmers.co.kr/learn/courses/30/lessons/120854

import Foundation

func solution(_ strlist:[String]) -> [Int] {
    return strlist.map{ $0.count }
}
