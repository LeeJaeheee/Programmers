// https://school.programmers.co.kr/learn/courses/30/lessons/12941

import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    let a = A.sorted()
    let b = B.sorted(by: >)
    var ans = 0
    
    for i in 0..<a.count {
        ans += a[i] * b[i]
    }

    return ans
}
