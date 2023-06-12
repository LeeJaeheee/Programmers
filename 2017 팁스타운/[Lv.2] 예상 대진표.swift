// https://school.programmers.co.kr/learn/courses/30/lessons/12985

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var arr: [Int] = [a, b].sorted()
    var answer = 1
    while !(arr[0] % 2 == 1 && arr[1] == arr[0] + 1) {
        arr[0] = (arr[0] % 2 == 1) ? (arr[0] + 1) / 2 : arr[0] / 2
        arr[1] = (arr[1] % 2 == 1) ? (arr[1] + 1) / 2 : arr[1] / 2
        answer += 1
    }
    return answer
}
