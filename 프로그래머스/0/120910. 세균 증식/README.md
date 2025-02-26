# [level 0] 세균 증식 - 120910 

[문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/120910) 

### 제출 일자

2025년 02월 26일 16:51:31

### 문제 설명

<p>어떤 세균은 1시간에 두배만큼 증식한다고 합니다. 처음 세균의 마리수 <code>n</code>과 경과한 시간 <code>t</code>가 매개변수로 주어질 때 <code>t</code>시간 후 세균의 수를 return하도록 solution 함수를 완성해주세요.</p>

<hr>

### 공부 노트

```
import Foundation

func solution(_ n: Int, _ t: Int) -> Int {
    var answer = n
    for _ in 1...t {
        answer *= 2
    }
    return answer
}
```

<hr>

> 출처: 프로그래머스 코딩 테스트 연습, https://school.programmers.co.kr/learn/challenges
