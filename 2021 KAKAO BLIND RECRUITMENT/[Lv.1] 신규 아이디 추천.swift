// https://school.programmers.co.kr/learn/courses/30/lessons/72410

import Foundation

func solution(_ new_id:String) -> String {
    var newId = new_id.map {Character($0.lowercased())}
    newId = newId.filter { $0.isLetter || $0.isNumber || ["-","_","."].contains($0) }
    
    var flag = false
    for (i, n) in newId.enumerated().reversed() {
        if n == "." {
            if flag == false {
                flag = true
            } else {
                newId.remove(at: i)
            }
        }
        if flag == true && n != "." {
            flag = false
        }
    }
    
    if newId[0] == "." {
        newId.removeFirst()
    }
    if newId.count > 0 && newId[newId.count-1] == "." {
        newId.removeLast()
    }

    if newId.isEmpty {
        newId = ["a"]
    }

    if newId.count >= 16 {
        newId.removeLast(newId.count-15)
        if newId[14] == "." {
            newId.removeLast()
        }
    }    
    
    if newId.count <= 2 {
        let last = newId[newId.count-1]
        while (newId.count != 3) {
            newId.append(last)
        }
    }

    return newId.map{String($0)}.joined()
}
