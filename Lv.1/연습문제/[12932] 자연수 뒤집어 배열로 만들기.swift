// https://school.programmers.co.kr/learn/courses/30/lessons/12932

func solution(_ n:Int64) -> [Int] {
    return String(n).reversed().map { Int(String($0))! } 
}
