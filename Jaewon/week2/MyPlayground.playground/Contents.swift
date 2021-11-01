import UIKit

//if, else if, if사용법
var age = 30
if age > 20 {
    print("20이상입니다.")
} else if age > 10 {
    print("10이상입니다.")
} else {
    print("그 외의 경우입니다.")
}

///for문 사용법
//case1
for i in 0...10 {
    print(i, terminator: ", ")
}
print()

///case2
for i in 0..<10 {
    print(i, terminator: ", ")
}
print()

//case3
var cities = ["서울", "인천", "부산", "울산", "경주"]
for city in cities {
    print(city, terminator: ", ")
}
print()


///switch case 사용법
var fruitName = "apple"

switch fruitName {
case "apple":
    print("apple")
case "straw":
    print("straw")
default:
    print("no")
}


///class, struct 사용법
//struct 사용법
struct Info {
    var name: String
    func introduce() {
        print("제 이름은 ", self.name, "입니다.")
    }
}

var s1 = Info(name: "아메리카노") //init이 없어도 init과 같은 방식으로 호출 가능하지만 모든 변수를 생성시 입력 해줘야야함
s1.introduce()

var s2 = s1 //복사 되어 값이 전달 됨
s1.name = "에스프레소"
s1.introduce()
s2.introduce()


print()
//class 사용법
class Infom {
    var name: String
    init(name: String) { //init이 필요함
        self.name = name
    }
    func introduce(){
        print("제 이름은 \(name) 입니다.")
    }
}

var c1 = Infom(name: "원스")
c1.introduce()

var c2 = c1 //참조 되어 값이 전달됨
c1.name = "트와이스"
c1.introduce()
c2.introduce()

print(Int.random(in: 0...10))


///옵셔널 사용법
//옵셔널 : 값이 있을수도 있고 없을 수도 있는 것(nil ~~ null과 비슷한것)
var hi = ["hi", "bye", "hello"]
print(hi.first) //옵셔널 변수를 사용하면 출력시 Optional("~~")으로 나옴

hi = []
print(hi.first) //빈값을 참조할때도 nil

var str: String? = "happy"
print(str?.uppercased()) // ?는 str이 nil이면 실행하지 않는다
print(str!.uppercased())

var value: Int = 3
var valueToBeSet: Int! = 4 // 암묵적으로 벗겨진 옵셔널 -> 옵셔널을 벗기는 과정(!)을 하지않아도 값에 바로 사용가능
var valueCanBeNil: Int? = 5 //옵셔널로 선언된 변수 -> 코드가 실행될 때까지 값이 있는지 없는지 알수 없음

//value = nil // 에러!
//valueToBeSet = nil // 가능
//valueCanBeNil = nil // 가능

//value = valueToBeSet // 가능
//value = valueCanBeNil // 불가능
//value = valueCanBeNil! // 가능 //값이 nil이 절대 아니라는 표현 !
