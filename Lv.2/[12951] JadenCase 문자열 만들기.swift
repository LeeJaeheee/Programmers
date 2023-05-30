//https://school.programmers.co.kr/learn/courses/30/lessons/12951

/* 첫번째 코드
func solution(_ s:String) -> String {
    var s = s.map { String($0) }
    var isFirst = 1
    
    for (i, c) in s.enumerated() {
        if c == " " {
            isFirst = 1
        } else if isFirst == 1 {
            s[i] = Character(c).isLowercase ? c.uppercased() : c
            isFirst = 0
        } else {
            s[i] = c.lowercased()
        }
    }
    
    return s.joined()
}
*/

/* 두번째 코드
func solution(_ s:String) -> String {
    var isFirst = 1
    let result = s.lowercased().map { c -> String in
        if c == " " {
            isFirst = 1
            return String(c)
        } else if isFirst == 1 {
            isFirst = 0
            return String(c.uppercased())
        }
        return String(c)
    }

    return result.joined()
}
*/

func solution(_ s:String) -> String {
    let s = s.lowercased()
    var result = ""
    var isFirst = 1
    
    for c in s {
        if c == " " {
            result.append(c)
            isFirst = 1
        } else if isFirst == 1 {
            result.append(c.uppercased())
            isFirst = 0
        } else {
            result.append(c)
        }
    }
    
    return result
}
