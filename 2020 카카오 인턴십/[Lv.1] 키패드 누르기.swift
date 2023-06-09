// https://school.programmers.co.kr/learn/courses/30/lessons/67256

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result: String = ""
    let initial = hand == "left" ? "L" : "R"
    var pos: (left: Int, right: Int) = (10, 12)
    
    for number in numbers {
        switch number {
        case 1, 4, 7: 
            result.append("L")
            pos.left = number
        case 3, 6, 9:
            result.append("R")
            pos.right = number
        default:
            var n = number == 0 ? 11 : number
            var moveL = (pos.left - n + 4) / 3
            var moveR = (pos.right - n + 2) / 3
            moveL = moveL <= 0 ? -moveL + 2 : moveL
            moveR = moveR <= 0 ? -moveR + 2 : moveR
            
            if [2,5,8,11].contains(pos.left) {
                let val = (pos.left - n) / 3
                moveL = val > 0 ? val : -val
            }
            if [2,5,8,11].contains(pos.right) {
                let val = (pos.right - n) / 3
                moveR = val > 0 ? val : -val
            }
            
            if moveL == moveR {
                result.append(initial)
                if hand == "left" {
                    pos.left = n
                } else {
                    pos.right = n
                }
            } else if moveL < moveR {
                result.append("L")
                pos.left = n
            } else {
                result.append("R")
                pos.right = n
            }
        }
    }
    return result
}
