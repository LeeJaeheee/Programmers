// https://school.programmers.co.kr/learn/courses/30/lessons/42579

import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var dict: [String: [Int: Int]] = [:]
    var sumPlays: [String: Int] = [:]
    
    for i in 0..<genres.count {
        dict[genres[i], default: [:]][i] = plays[i]
        sumPlays[genres[i], default: 0] += plays[i]
    }
    
    var result: [Int] = []
    for s in sumPlays.sorted { $0.1 > $1.1 } {
        var info = dict[s.0]!
        if info.count == 1 {
            result += info.keys
        } else {
            var arr = info.sorted { $0.1 > $1.1 }.map { $0.0 }[0...1]
            result += (info[arr[0]] == info[arr[1]]) ? arr.sorted() : Array(arr)
        }
    }
    return result
}
