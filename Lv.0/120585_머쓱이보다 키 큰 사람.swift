// https://school.programmers.co.kr/learn/courses/30/lessons/120585

import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    return array.filter { $0 > height }.count
}
