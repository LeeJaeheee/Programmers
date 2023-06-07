// https://school.programmers.co.kr/learn/courses/30/lessons/67258

/* 효율성 테스트 실패(시간 초과)
import Foundation

func solution(_ gems:[String]) -> [Int] {
    let slen = Set(gems).count
    var result = [1, gems.count]
    
    var start = 0
    var end = start+slen-1
    
    while start <= gems.count-slen && start+slen-1..<gems.count ~= end {
        if Set(gems[start...end]).count == slen {
            result = end-start < result[1]-result[0] ? [start+1, end+1] : result
            if end-start+1 == slen {
                return result
            }
            for i in start+1...end-slen+1 {
                if Set(gems[i...end]).count == slen {
                    result = end-i < result[1]-result[0] ? [i+1, end+1] : result
                    start += 1
                } else {
                    break
                }
            }
        }
        end += 1
    }

    return result
}
*/
