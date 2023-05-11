// https://school.programmers.co.kr/learn/courses/30/lessons/12934

func solution(_ n:Int64) -> Int64 {
    let sqrt = Double(n).squareRoot()
    return sqrt == Double(Int(sqrt)) ? Int64((sqrt + 1) * (sqrt + 1)) : -1
}
