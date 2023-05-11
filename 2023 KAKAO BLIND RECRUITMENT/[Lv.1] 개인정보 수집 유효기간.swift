// https://school.programmers.co.kr/learn/courses/30/lessons/150370

// 최초 풀이
import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    
    var result: [Int] = []
    
    let calendar = Calendar.current
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy.MM.dd"
    let today = dateFormatter.date(from: today)!
    
    var dterms: [String: Int] = [:]
    for str in terms {
        let s = str.split(separator: " ")
        dterms[String(s[0])] = Int(s[1])!
    }

    for (i, str) in privacies.enumerated() {
        let privacy = str.split(separator: " ")
        let date = dateFormatter.date(from: String(privacy[0]))!
        
        if calendar.date(byAdding: .month, value: dterms[String(privacy[1])]!, to: date)! <= today {
            result.append(i+1)
        }
    }
    return result
    
}

// 새로운 풀이
import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    
    var result: [Int] = []
    
    let today = today.split(separator: ".").map { Int($0)! }
    let todayDays = today[0] * 12 * 28 + today[1] * 28 + today[2]
    
    var dictterms: [String: Int] = [:]
    for term in terms {
        let term = term.split(separator: " ").map { String($0) }
        dictterms[term[0]] = Int(term[1])!
    }
    
    privacies.enumerated().forEach {
        let privacy = $1.split(separator: " ").map { String($0) }
        let date = privacy[0].split(separator: ".").map { Int($0)! }
        let expireDays = date[0] * 12 * 28 + (date[1] + dictterms[privacy[1]]!) * 28 + date[2]
        
        if expireDays <= todayDays {
            result.append($0 + 1)
        }
    }
    
    return result
    
}

