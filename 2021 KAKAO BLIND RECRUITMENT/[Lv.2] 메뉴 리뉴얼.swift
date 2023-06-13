// https://school.programmers.co.kr/learn/courses/30/lessons/72411

import Foundation

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    var dict: [Int: [Set<String>: Int]] = [:]
    
    func getCombi(_ arr: [String], _ c: Int, _ index: Int, _ a : [String]) {
        if a.count == c {
            dict[c, default:[:]][Set(a), default: 0] += 1
            return
        }
        if index < 0 { return }
        getCombi(arr, c, index-1, a+[arr[index]])
        getCombi(arr, c, index-1, a)
    }
    
    for order in orders {
        for c in course.filter {$0 <= order.count} {
            getCombi(order.map{String($0)}, c, order.count-1, [])
        }
    }
    
    var result: [String] = []
    for k in dict.keys.sorted() {
        let max = dict[k]!.values.max()!
        if max >= 2 {
            result += dict[k]!.filter{$0.1 == max}.map{$0.0.sorted().joined()}
        }
    }

    return result.sorted()
}
