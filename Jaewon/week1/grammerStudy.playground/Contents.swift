import UIKit

// var 은 변수 int, string, boolean 모두 같은 선언
// 논리곱은 &&, 논리합은 ||
var tmp = 20
print(tmp)


var firstName = "Harry"
var secondName = "Potter"

print("\(firstName) \(secondName)")

print(firstName == secondName)

print(100 >= 50)

//리스트도 var로 선언 아래와 같이 선언 하거나, var l = [1,2]와 같은 형태로도 선언 가능
var sampleList: [Int] = []

sampleList.append(0)
sampleList.append(5)
sampleList.append(10)

//리스트 자체를 프린트 하면 [0, 5, 10]와 같이 출력
print(sampleList)
//리스트의 크기를 구하는 함수(?)
sampleList.count

//딕셔너리도 var로 선언 아래와 같이 선언 하거나, var d: [Int: String] = [1:"name"]와 같은 형태로도 선언 가능
var sampleDict: [String: String] = [:]
sampleDict["name"] = "Harry Potter"
sampleDict["house"] = "Gryffindor"

print(sampleDict)

sampleDict["name"]
sampleDict["house"]
//딕셔너리의 value값을 출력하려면 아래와 같이 사용
print(sampleDict["house"]!)

sampleDict["house"] = "Slytherin"
//딕셔너리 자체를 프린트하면, ["name": "Harry Potter", "house": "Slytherin"]와 같이 풀력
print(sampleDict)

var str = "hello world"
//str을 로 변환
str = str.uppercased()

//함수 사용
func printSum(num1: Int, num2: Int){
    print( num1 + num2 )
}

printSum(num1: 4, num2: 5)

func calculateAge(calYear: Int, birthYear: Int) ->Int {
    return calYear - birthYear
}

calculateAge(calYear: 2021, birthYear: 1993)
