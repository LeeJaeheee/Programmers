// https://school.programmers.co.kr/learn/courses/30/lessons/120889

import Foundation

func solution(_ sides:[Int]) -> Int {
    let newList = sides.sorted()
    return newList[0] + newList[1] > newList[2] ? 1 : 2
}
