// https://school.programmers.co.kr/learn/courses/30/lessons/12903

func solution(_ s:String) -> String {
    let s = Array(s)
    let c = s.count
    return c % 2 == 0 ? String(s[c/2-1...c/2]) : String(s[c/2])
}
