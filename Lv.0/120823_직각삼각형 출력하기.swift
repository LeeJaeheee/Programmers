// https://school.programmers.co.kr/learn/courses/30/lessons/120823

import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}


// 다른 풀이
import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    print(String(repeating: "*", count: i))
}


// 다른 풀이
import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }

(1...n[0]).forEach {
    print((1...$0).map { _ in "*" }.joined())
}
