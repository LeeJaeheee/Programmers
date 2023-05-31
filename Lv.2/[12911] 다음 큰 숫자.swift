// https://school.programmers.co.kr/learn/courses/30/lessons/12911

/* 효율성 떨어지는 코드
import Foundation

func solution(_ n:Int) -> Int
{
    var answer = n+1
    let count1 = String(n, radix: 2).filter { $0 == "1" }.count
    
    while String(answer, radix:2).filter { $0 == "1" }.count != count1 {
        answer += 1
    }
    
    return answer
}
*/


import Foundation

func solution(_ n:Int) -> Int {
    var answer : Int = n + 1
    let count1 = n.nonzeroBitCount

    while answer.nonzeroBitCount != count1 {
        answer += 1
    }

    return answer
}

// (nonzeroBitCount) https://developer.apple.com/documentation/swift/int/nonzerobitcount
