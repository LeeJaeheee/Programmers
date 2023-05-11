// https://school.programmers.co.kr/learn/courses/30/lessons/12916

import Foundation

func solution(_ s:String) -> Bool
{
    let str = s.lowercased()
    return str.filter { $0 == "p" }.count == str.filter { $0 == "y" }.count
}
