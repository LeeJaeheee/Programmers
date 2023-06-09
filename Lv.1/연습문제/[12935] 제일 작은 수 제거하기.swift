// https://school.programmers.co.kr/learn/courses/30/lessons/12935

func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    let min: Int = arr.min()!
  
    result.remove(at: arr.index(of: min)!)
    //result.removeAll(where: { $0 == min })
    return result == [] ? [-1] : result
}

// https://developer.apple.com/documentation/swift/array/remove(at:)-1p2pj
// https://developer.apple.com/documentation/swift/array/removeall(where:)-5k61r
