import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let N = n * 12000
    let quotient = n / 10
    let K = (k - quotient) * 2000
    let answer = N + K
    
    return answer
}
/*
1. n*12000을 계산한 값을 출력 = N
2. n을 10으로 나눠서 나오는 몫을 k에서 뺌
3. 2의 과정을 거쳤을때 k*2000을 함 = K
4. N+K를 출력
*/