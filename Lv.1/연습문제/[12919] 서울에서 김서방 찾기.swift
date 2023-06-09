// https://school.programmers.co.kr/learn/courses/30/lessons/12919

func solution(_ seoul:[String]) -> String {
    let index: Int = seoul.firstIndex(of: "Kim")!
    return "김서방은 \(index)에 있다"
}
