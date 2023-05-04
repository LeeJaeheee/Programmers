// https://school.programmers.co.kr/learn/courses/30/lessons/120826

import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    return my_string.filter { String($0) != letter }
}
