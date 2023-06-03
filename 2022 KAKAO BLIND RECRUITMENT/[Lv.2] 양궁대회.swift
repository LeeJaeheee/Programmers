// https://school.programmers.co.kr/learn/courses/30/lessons/92342

import Foundation

func getResult(_ result: inout [Int], _ least: [Int], _ n: Int, _ tmp:[Int], _ maxd: inout Int) {
    var sum = 0
    var ryan = 0
    var apeach = 0
    
    for (i, t) in tmp.enumerated() {
        if t == 1 {
            sum += least[i]
            ryan += i
        } else if least[i] != 1 {
            apeach += i
        }    
        
        if sum > n { return }
        
        if i == 10 {
            var diff = ryan - apeach
            if diff > 0 && diff > maxd {
                maxd = diff
                result = tmp
            }
            return
        }
    }
    
    for i in [1, 0] {
        getResult(&result, least, n, tmp + [i], &maxd)
    }
}

func solution(_ n:Int, _ info:[Int]) -> [Int] {
    let info = info.reversed()
    var result = [-1]
    var maxd = -1
    var least = info.map { $0 + 1 }
    
    getResult(&result, least, n, [], &maxd)
    
    if result == [-1] {
        return result
    }
    
    for (i, r) in result.enumerated() {
        if r == 1 {
            result[i] = least[i]
        }
    }
    
    let count = result.reduce(0, +)
    result[0] += n - count
    
    return result.reversed()
}
