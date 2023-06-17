// https://school.programmers.co.kr/learn/courses/30/lessons/178871

import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var count: [Int: String] = [:]
    var reverse: [String: Int] = [:]
    players.enumerated().forEach { count[$0.0] = $0.1; reverse[$0.1] = $0.0 }

    for c in callings {
        let re = reverse[c]!
        let pre = count[re-1]!

        count[re-1]! = c
        count[re]! = pre

        reverse[c]! = re-1
        reverse[pre]! = re
    }

    return count.sorted { $0.0 < $1.0 }.map { $0.1 }
}
