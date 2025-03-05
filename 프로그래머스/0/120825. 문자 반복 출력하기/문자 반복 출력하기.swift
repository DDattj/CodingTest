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

/*
1. 문자열의 문자가 각각 어떤것이 있는지 확인
2. 각 문자를 n만큼 반복
3. 문자열을 재조합 해서 리턴
*/