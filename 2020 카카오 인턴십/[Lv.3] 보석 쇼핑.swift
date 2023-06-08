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
/*
import Foundation

func solution(_ gems:[String]) -> [Int] {
    let gemsSet = Set(gems)
    let slen = gemsSet.count
    let gemsCount = gems.count
    
    var result = [1, gemsCount]    
    var start = 0
    var end = start+slen-1
    
    var counts: [String: Int] = [:]
    var nowSet: Set<String> = []
    
    for i in start...end {
        nowSet.insert(gems[i])
        counts[gems[i], default: 0] += 1
    }
    
    while start <= gemsCount-slen && start+slen-1..<gemsCount ~= end {
        if nowSet == gemsSet {  
            while nowSet == gemsSet {
                result = end-start < result[1]-result[0] ? [start+1, end+1] : result
                if end-start+1 == slen {
                    return result
                }
                if counts[gems[start]]! > 1 {
                    counts[gems[start]]! -= 1
                } else {
                    nowSet.remove(gems[start])
                    counts[gems[start]]! -= 1
                }
                start += 1
            }
        }
        end += 1
        if end < gemsCount {
            nowSet.insert(gems[end])
            counts[gems[end], default: 0] += 1
        }
    }

    return result
}
*/
/*
import Foundation

func solution(_ gems:[String]) -> [Int] {
    let setCount = Set(gems).count
    var result = [1, gems.count]
    var gemDict: [String: Int] = [:]
    var isTrue = false

    for (i, gem) in gems.enumerated() {
        gemDict[gem, default: 0] = i+1
        if !isTrue {
            isTrue = gemDict.count == setCount ? true : false
        }
        if isTrue {
            let max = gemDict.values.max()!
            let min = gemDict.values.min()!
            if max - min == setCount - 1 {
                return [min, max]
            }
            if result[1] - result[0] > max - min {
                result = [min, max]
            }
        }
    }
    return result

}
*/
