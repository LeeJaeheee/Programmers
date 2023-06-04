// https://school.programmers.co.kr/learn/courses/30/lessons/169198

import Foundation

func solution(_ m:Int, _ n:Int, _ startX:Int, _ startY:Int, _ balls:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for b in balls {
        var lr = startY != b[1] ? min(startX + b[0], 2*m - b[0] - startX) : b[0] > startX ? startX + b[0] : 2*m - b[0] - startX
        var ud = startX != b[0] ? min(startY + b[1], 2*n - b[1] - startY) : b[1] > startY ? startY + b[1] : 2*n - b[1] - startY
        
        let lrDis = (startY-b[1]) * (startY-b[1]) + lr * lr
        let udDis = (startX-b[0]) * (startX-b[0]) + ud * ud
        result.append(min(lrDis, udDis))
    }

    return result
}
