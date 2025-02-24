import Foundation

// 최대공약수 구하기
func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}

// 최소공배수 구하기
func lcm(_ a: Int, _ b: Int) -> Int {
    return abs(a * b) / gcd(a, b)
}

func solution(_ numer1: Int, _ denom1: Int, _ numer2: Int, _ denom2: Int) -> [Int] {
    // denom1과 denom2의 최소공배수 구하기
    let finalD = lcm(denom1, denom2)
    
    // multiplier1과 multiplier2 구하기
    let multiplier1 = finalD / denom1
    let multiplier2 = finalD / denom2
    
    // finalN 구하기
    let finalN = numer1 * multiplier1 + numer2 * multiplier2
    
    // 기약 분수로 만들기 위해 최대공약수 구하기
    let gcdValue = gcd(finalN, finalD)
    
    // 결과 반환 (기약 분수)
    return [finalN / gcdValue, finalD / gcdValue]
}

/*
    
1. denom1과 denom2 최소공배수 구하기 (최대공약수는 gcd, 최소공배수는 lcm이라고 함)
2. finalD(result에서 뒷 숫자)는 최소공배수로 출력하도록
3. numer1과 numer2는 각각 denom1과 denom2가 finalD가 되기 위해 몇을 곱했는지 찾고 곱한 수를 각각 곱해주기
4. finalN(result에서 앞 숫자)는 numer1과 numer2의 합을 찾기
5. [finalN, finalD]로 표시되도록 출력
6. 기약분수 있으면 나눠야 함 -> 이거 안해서 테스트 통과 실패함

*/
