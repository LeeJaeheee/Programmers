// https://school.programmers.co.kr/learn/courses/30/lessons/118666

import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    let types: [[String]] = [["R", "T"], ["C", "F"], ["J", "M"], ["A", "N"]]
    var scores: [String: Int] = [:]
    
    types.forEach { t in t.forEach { scores[$0] = 0 } }
    
    for (i, s) in survey.enumerated() {
        let s = s.map {String($0)}
        if 1...3 ~= choices[i] {
            scores[s[0]]! += 4 - choices[i]
        } else {
            scores[s[1]]! += choices[i] % 4
        }
    }
    
    var result: String = ""
    for t in types {
        let (st, nd) = (scores[t[0]]!, scores[t[1]]!)
        result += st == nd ? min(t[0], t[1]) : st > nd ? t[0] : t[1]
    }
    
    return result
}
