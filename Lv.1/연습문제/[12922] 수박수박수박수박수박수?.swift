// https://school.programmers.co.kr/learn/courses/30/lessons/12922

func solution(_ n:Int) -> String {
    var result = String(repeating: "수박", count: n/2)
    return n % 2 == 1 ? result + "수" : result
}
