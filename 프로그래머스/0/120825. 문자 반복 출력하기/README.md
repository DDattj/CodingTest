# [level 0] 문자 반복 출력하기 - 120825 

[문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/120825?language=swift) 

### 제출 일자

2025년 03월 05일 10:14:41

### 문제 설명

<p>문자열 <code>my_string</code>과 정수 <code>n</code>이 매개변수로 주어질 때, <code>my_string</code>에 들어있는 각 문자를 <code>n</code>만큼 반복한 문자열을 return 하도록 solution 함수를 완성해보세요.</p>

<hr>

### 공부노트

코드 구성 순서는
1.문자열의 문자가 각각 어떤것이 있는지 확인
2.각 문자를 n만큼 반복
3.문자열을 재조합 해서 리턴

```
import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var result = ""
    
    for char in my_string {
        for i in 0..<n {
            result.append(char)
        }
    }
    
    return result
}
```
**char = character 라는 말로 문자열에서 문자 하나를 말하는것**
문자열에서 문자열을 n만큼 반복하며 지나간다. 즉 프로세스 처리과정을 보면 abc 라는 문자열이 있고 n이 3이라면
a ( n이 3번 있으니) aab ( n이 3번 있으니) bbc ( n이 3번 있으니) cc -> aaabbbccc 이렇게 되는것

<hr>

> 출처: 프로그래머스 코딩 테스트 연습, https://school.programmers.co.kr/learn/challenges
