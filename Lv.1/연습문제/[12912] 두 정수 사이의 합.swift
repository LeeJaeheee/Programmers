// https://school.programmers.co.kr/learn/courses/30/lessons/12912

func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64((min(a,b)...max(a,b)).reduce(0, +))
}
