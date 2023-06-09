// https://school.programmers.co.kr/learn/courses/30/lessons/12910

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter { $0 % divisor == 0 }
    return result.count > 0 ? result.sorted() : [-1]
}
