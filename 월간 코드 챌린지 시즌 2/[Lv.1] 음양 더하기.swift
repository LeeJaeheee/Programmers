// https://school.programmers.co.kr/learn/courses/30/lessons/76501

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return (0..<absolutes.count).reduce(0, { $0 + (signs[$1] == true ? absolutes[$1] : -absolutes[$1])})
}
