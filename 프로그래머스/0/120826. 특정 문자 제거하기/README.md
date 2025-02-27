# [level 0] 특정 문자 제거하기 - 120826 

[문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/120826) 


### 제출 일자

2025년 02월 27일 14:02:39

### 문제 설명

<p>문자열 <code>my_string</code>과 문자 <code>letter</code>이 매개변수로 주어집니다. <code>my_string</code>에서 <code>letter</code>를 제거한 문자열을 return하도록 solution 함수를 완성해주세요.</p>

<hr>

### 공부노트
코드 짜는거 몰라서 방법을 구상하고 ai돌림

1. 문자열 my_string에서 letter를 찾기
2. 없으면 my_string 그대로 출력
3. 있으면 letter를 뺀 후 남은 문자열을 출력
```
func solution(_ my_string: String, _ letter: String) -> String {
//걸러낸것을 출력
    if my_string.contains(letter) {
        return my_string.replacingOccurrences(of: letter, with: "")
    } else {
//예외상황에선 그대로 출력
        return my_string
    }
}
```
**replacingOccurrences(of: letter, with: "")** 는 문자열에서 특정 문자를 어떠한 방식으로 대체해달라는 메서드로, 즉 letter를 공백으로 대체해달라는 말이다.
이렇게 해도 되긴 하는데 다른 더 쉬운 방법이 존재함.
무엇을 무엇으로 대체해서 출력해달라가 아니라 **출력과정에서 문자를 필터링 해달라**고 요청하면 더 빠르고 코드도 덜 복잡해짐
```
func solution(_ my_string:String, _ letter:String) -> String {
    return my_string.filter{String($0) != letter}
}
```
String($0) != letter
첫 문자부터 시작해서 letter가 아닌것을 필터링 하라는 말. letter가 아닌것을 리턴하면 원하는 문자열을 출력할 수 있음

<hr>

> 출처: 프로그래머스 코딩 테스트 연습, https://school.programmers.co.kr/learn/challenges
