# [level 0] 분수의 덧셈 - 120808 

[문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/120808) 


### 제출 일자

2025년 02월 24일 15:45:18

### 문제 설명

<p>첫 번째 분수의 분자와 분모를 뜻하는 <code>numer1</code>, <code>denom1</code>, 두 번째 분수의 분자와 분모를 뜻하는 <code>numer2</code>, <code>denom2</code>가 매개변수로 주어집니다. 두 분수를 더한 값을 기약 분수로 나타냈을 때 분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.</p>

<hr>

### 공부노트
코드 짜는거 몰라서 방법을 구상하고 ai돌림

1. denom1과 denom2 최소공배수 구하기 (최대공약수는 gcd, 최소공배수는 lcm이라고 함)
2. finalD(result에서 뒷 숫자)는 최소공배수로 출력하도록
3. numer1과 numer2는 각각 denom1과 denom2가 finalD가 되기 위해 몇을 곱했는지 찾고 곱한 수를 각각 곱해주기
4. finalN(result에서 앞 숫자)는 numer1과 numer2의 합을 찾기
5. [finalN, finalD]로 표시되도록 출력
6. 기약분수 있으면 나눠야 함 -> 이거 안해서 테스트 통과 실패함
```
// 최대공약수 구하기
func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}

// 최소공배수 구하기
func lcm(_ a: Int, _ b: Int) -> Int {
    return abs(a * b) / gcd(a, b)
}
```
재귀함수 쓰는법이 제일 어려워서 이 부분만 분석해보자면 

gcd(최대공약수) 구하는 법을 만들기 = b가 0이면 a를 반환, b가 0이 아니면 뒤의 것을 실행
(유클리드 호제법을 쓰라고 하는데 나는 약수 나열법 밖에 몰라서 이 식이 생소함)

lcm(최소공배수) 구하는 법을 만들기 = a와 b를 곱하기(abs 는 수가 음수가 되지 않도록 절대값을 가져오라고 명령하는 함수)
+ 곱한 값을 최대공약수로 나누면 최소공배수가 구해짐

**수학적 지식 부족으로 인한 오답.. 코드 짤 때 이게 얼마나 쓰일지는 몰라도 우선 재귀함수 기호들은 외워두면 좋을것 같음**
 
<hr>

> 출처: 프로그래머스 코딩 테스트 연습, https://school.programmers.co.kr/learn/challenges
