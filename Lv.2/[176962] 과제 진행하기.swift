// https://school.programmers.co.kr/learn/courses/30/lessons/176962

import Foundation

func solution(_ plans:[[String]]) -> [String] {
    var plans = plans
    plans.sort { $0[1] < $1[1] }
    
    var plans2: [(name: String, stime: Int, playtime: Int, etime: Int)] = []
    
    for p in plans {
        let start = p[1].components(separatedBy: ":").map { Int($0)! }
        let stime = start[0] * 60 + start[1]
        let playtime = Int(p[2])!
        let etime = stime + playtime
        
        plans2.append((p[0], stime, playtime, etime))
    }
    
    var result: [String] = []

    var stack: [(name: String, playtime: Int)] = []
    var endtime = -1
    
    for (i, p) in plans2.enumerated() {
        var remained = p.stime - endtime
        
        if remained < 0 {
            stack[stack.endIndex-1].playtime = -remained
        } else if i != 0 {
            result.append(stack.removeLast().name)
            for s in stack.reversed() {
                if remained > s.playtime {
                    result.append(stack.removeLast().name)
                    remained -= s.playtime
                } else if remained == s.playtime {
                    result.append(stack.removeLast().name)
                    break
                } else if remained > 0 {
                    stack[stack.endIndex-1].playtime -= remained
                    break
                } else {
                    break
                }
            }
        }
        stack.append((p.name, p.playtime))
        endtime = p.etime
    }
    
    for s in stack.reversed() {
        result.append(s.name)
    }
    
    return result
}
