// https://school.programmers.co.kr/learn/courses/30/lessons/92334

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reported: [String: Int] = [:]
    var user: [String: [String]] = [:]

    for r in Set(report) {
        let r = r.split(separator: " ").map { String($0) }
        user[r[0]] = (user[r[0]] ?? []) + [r[1]]
        reported[r[1]] = (reported[r[1]] ?? 0) + 1
    }

    return id_list.map { (user[$0] ?? []).filter { reported[$0]! >= k }.count }
}

// (nil-coalescing) https://developer.apple.com/documentation/swift/__(_:_:)-8buau
