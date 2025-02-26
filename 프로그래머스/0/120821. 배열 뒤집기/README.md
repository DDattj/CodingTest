# [level 0] 배열 뒤집기 - 120821 

[문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/120821) 

### 제출 일자

2025년 02월 26일 15:09:26

### 문제 설명

<p>정수가 들어 있는 배열 <code>num_list</code>가 매개변수로 주어집니다. <code>num_list</code>의 원소의 순서를 거꾸로 뒤집은 배열을 return하도록 solution 함수를 완성해주세요.</p>

<hr>

### 공부노트

조금 복잡하게 생각했는데 의외로 간단한 코드였다.

```
import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return Array(num_list.reversed())
}
```
Array()를 사용하는 이유는 숫자를 반대로 출력한 결과를 **배열로 변환하기 위함**
reversed() 메서드는 배열을 뒤집은 결과를 반환하지만, 이 결과는 배열이 아니라 **ReversedCollection이라는 타입을 반환**
실제로는 배열이 아님

근데 ReversedCollection 타입이라는게 뭔지 모르겠음

<hr>

> 출처: 프로그래머스 코딩 테스트 연습, https://school.programmers.co.kr/learn/challenges
