# [level 0] 양꼬치 - 120830 

[문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/120830) 

### 제출 일자

2025년 02월 25일 16:37:20

### 문제 설명

<p>머쓱이네 양꼬치 가게는 10인분을 먹으면 음료수 하나를 서비스로 줍니다. 양꼬치는 1인분에 12,000원, 음료수는 2,000원입니다. 정수 <code>n</code>과 <code>k</code>가 매개변수로 주어졌을 때, 양꼬치 <code>n</code>인분과 음료수 <code>k</code>개를 먹었다면 총얼마를 지불해야 하는지 return 하도록 solution 함수를 완성해보세요.</p>

<hr>

### 공부노트
오랜만에 내 머리로 짠 코드라 기쁘다.. 우선 순서는 이렇게 됨
1. n*12000을 계산한 값을 출력 = N
2. n을 10으로 나눠서 나오는 몫을 k에서 뺌
3. 2의 과정을 거쳤을때 k*2000을 함 = K
4. N+K를 출력

```
import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let N = n * 12000
    let quotient = n / 10
    let K = (k - quotient) * 2000
    let answer = N + K
    
    return answer
}
```

**중간에 살짝 실수를 했는데 나누기 몫을 구할때는 /, 나머지를 구할때는 %**

<hr>

> 출처: 프로그래머스 코딩 테스트 연습, https://school.programmers.co.kr/learn/challenges
