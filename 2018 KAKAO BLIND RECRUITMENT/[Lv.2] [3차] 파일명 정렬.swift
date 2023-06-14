// https://school.programmers.co.kr/learn/courses/30/lessons/17686

func solution(_ files:[String]) -> [String] {
    var dict: [String: [(i: Int, n: Int)]] = [:]
    
    for (i, file) in files.enumerated() {
        var (head, strnum, flag) = ("", "", false)
        for f in file {
            if !f.isNumber {
                if flag == true { break }
                head += String(f)
            } else {
                flag = true
                strnum += String(f)
            }
        }
        dict[head.lowercased(), default: []] += [(i, Int(strnum)!)]
    }
    
    var result: [String] = []
    for d in dict.sorted { $0.key < $1.key } {
        result += d.value.sorted { $0.n != $1.n ? $0.n<$1.n : $0.i<$1.i }.map {files[$0.i]}
    }
    return result
}
