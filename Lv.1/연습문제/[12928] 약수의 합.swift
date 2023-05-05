// https://school.programmers.co.kr/learn/courses/30/lessons/12928

// 틀린 풀이 : 테스트 16 〉	실패 (signal: illegal instruction (core dumped))
// 틀린 이유 : n이 0인 경우 고려하지 않음
func solution(_ n:Int) -> Int {
    return (1...n).filter{ n % $0 == 0 }.reduce(0, +)
}

// 수정한 풀이
func solution(_ n:Int) -> Int {
    return n == 0 ? 0 : (1...n).filter{ n % $0 == 0 }.reduce(0, +)
}
