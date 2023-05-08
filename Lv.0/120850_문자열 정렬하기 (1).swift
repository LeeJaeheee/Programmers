// https://school.programmers.co.kr/learn/courses/30/lessons/120850

import Foundation

func solution(_ my_string:String) -> [Int] {
    return my_string.compactMap { Int(String($0)) }.sorted()
}
