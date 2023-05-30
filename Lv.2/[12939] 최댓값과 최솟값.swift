// https://school.programmers.co.kr/learn/courses/30/lessons/12939

func solution(_ s:String) -> String {
    var s = s.split(separator: " ").map { Int($0)! }
    s.sort()
    return "\(s[0]) \(s.last!)"
}
