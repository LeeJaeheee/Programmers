// https://school.programmers.co.kr/learn/courses/30/lessons/12945?language=swift

func solution(_ n:Int) -> Int {   
    let num = 1234567
    
    if n == 0 { return 0 }
    if n == 1 { return 1 }
    
    var fibo: [Int] = [0, 1]
    
    for i in 2...n {
        fibo.append((fibo[i-1] % num + fibo[i-2] % num) % num)
    }
    
    return fibo[n]
}
