// https://school.programmers.co.kr/learn/courses/30/lessons/120908

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    return str1.contains(str2) ? 1 : 2
}


// 다른풀이
import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    return str1.components(separatedBy: str2).count > 1 ? 1 : 2
}
