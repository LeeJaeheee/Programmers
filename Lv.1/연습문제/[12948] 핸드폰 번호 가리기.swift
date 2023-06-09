// https://school.programmers.co.kr/learn/courses/30/lessons/12948

func solution(_ phone_number:String) -> String {
    return String(repeating:"*", count:phone_number.count-4) + phone_number.suffix(4)
}

// (suffix) https://developer.apple.com/documentation/swift/string/suffix(_:)
