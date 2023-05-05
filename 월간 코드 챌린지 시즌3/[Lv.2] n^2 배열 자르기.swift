// https://school.programmers.co.kr/learn/courses/30/lessons/87390

import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    return (Int(left)...Int(right)).map { max($0 / n + 1, $0 % n + 1) }
}


// 두 번째 시도
// 실패
import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    let left = Int(left)
    let right = Int(right)
    
    var arr = [Int]()
    var index = 0
    
    var start = (x: left / n + 1, y: left % n + 1)
    
    for i in (start.x...n) {
        if i == start.x {
            for j in (start.y...n) {
                i >= j ? arr.append(i) : arr.append(j)
                index += 1
            }
        } else {
            for j in (1...n) {
                if index > right - left {
                    return arr
                }
                i >= j ? arr.append(i) : arr.append(j)
                index += 1
            }
        }
    }
    return arr
}


// 첫 번째 시도
// 테스트 12~20 〉 실패 (시간 초과)
import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var arr = [Int]()
    var index: Int64 = 0

    for i in (1...n) {
        for j in (1...n) {
            if index > right {
                return arr
            } else if index >= left {
                i >= j ? arr.append(i) : arr.append(j)
            }
            index += 1
        }
    }
    return arr
}
