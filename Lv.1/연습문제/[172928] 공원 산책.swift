// https://school.programmers.co.kr/learn/courses/30/lessons/172928

import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {

    let opDict = ["N": [-1, 0], "S": [1, 0], "W": [0, -1], "E": [0, 1]]
    let (h, w) = (park.count, park[0].count)
    var result = [0, 0]
    
    var board: [[String]] = Array(repeating: [], count: h)
    for (i, park) in park.enumerated() {
        for (j, p) in park.enumerated() {
            if p == "S" { result = [i, j] }
            board[i].append(String(p))
        }
    }

    for route in routes {
        let route = route.components(separatedBy: " ")
        let (op, n) = (route[0], Int(route[1])!)
        let dict = opDict[op]!
        var (row, col, isTrue) = (result[0], result[1], true)
        
        for i in 1...n {
            row += dict[0]
            col += dict[1]
            if !(0..<h ~= row && 0..<w ~= col && board[row][col] != "X") {
                isTrue = false
                break
            }
        }
        result = isTrue ? [row, col] : result
    }
    return result
}
