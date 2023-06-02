// https://school.programmers.co.kr/learn/courses/30/lessons/72412

/* 효율성 테스트 실패 (시간 초과)
import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {
    var result: [Int] = []
    var info = info.map { $0.components(separatedBy: " ") }
    
    for q in query {
        let requires = q.components(separatedBy: " ").filter { $0 != "and" }
        var matched = info
        
        for (i, r) in requires.enumerated() {
            if i == 4 {
                result.append(matched.filter { Int($0[4])! >= Int(r)! }.count)
                break
            }
            if r != "-" {
                matched = matched.filter { $0[i] == r }
            }
        }
    }
    return result
}
*/

import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {
  
    var result: [Int] = []   
    var cases : [String: [Int]] = [:]
    
    for i in info {
        let arr = i.components(separatedBy: " ")      
        for a in [arr[0], "-"] {
            for b in [arr[1], "-"] {
                for c in [arr[2], "-"] {
                    for d in [arr[3], "-"] {
                        let str = a+b+c+d
                        cases[str, default: []].append(Int(arr[4])!)
                    }
                }
            }
        } 
    }
    
    for key in cases.keys {
        cases[key]!.sort { $0 > $1 }
    }
    
    for q in query {
        let q = q.components(separatedBy: " ").filter { $0 != "and" }
        let str = q[0...3].map { String($0) }.joined()
        let num = Int(q[4])!
        
        if cases[str] == nil {
            result.append(0)
        } else {
            let c = cases[str]!
            var start = 0
            var end = (c.count - 1)
            var mid = (start + end) / 2

            while start <= end {
                if c[mid] < num { 
                    end = mid - 1 
                } else { 
                    start = mid + 1 
                }
                mid = (start + end) / 2
            }
            result.append(start)
        }
    }
    
    return result
}
