// https://school.programmers.co.kr/learn/courses/30/lessons/12943

func solution(_ num:Int) -> Int {
    var count = 0
    var n = num
    
    while count < 500 && n != 1 {
        n = n.isMultiple(of: 2) ? n / 2 : n * 3 + 1
        count += 1
    }
    
    return n == 1 ? count : -1
}

// (isMultiple(of:)) https://developer.apple.com/documentation/swift/int/ismultiple(of:)
