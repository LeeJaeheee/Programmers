// https://school.programmers.co.kr/learn/courses/30/lessons/12933

func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted(by: >)))!
}
