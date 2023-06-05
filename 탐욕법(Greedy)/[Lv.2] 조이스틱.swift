// https://school.programmers.co.kr/learn/courses/30/lessons/42860

import Foundation

func solution(_ name:String) -> Int {
    if Set(name) == ["A"] {
        return 0
    }
    let arr: [String] = (65..<65+26).map { String(UnicodeScalar($0)!) }
    var dict: [String: Int] = [:]
    for (i, alpha) in arr.enumerated() {
        dict[alpha] = alpha > "N" ? 26 - i : i
    }
    var rangeA: [Int: Int] = [:]
    var result: Int = 0, flag = 0, index = 0
    for (i, n) in name.enumerated() {
        result += dict[String(n)]!
        if n != "A" {
            flag = 0
        } else if flag == 0 {
            rangeA[i] = 1
            index = i
            flag = 1
        } else {
            rangeA[index]! += 1
        }
    }
    var move = name.count - 1
    for (k, v) in rangeA {
        let minCount = k == 0 ? name.count-(k+v) : min(k-1, name.count-(k+v))
        move = min(move, name.count + minCount - v - 1)
    }
    return result + move
}
