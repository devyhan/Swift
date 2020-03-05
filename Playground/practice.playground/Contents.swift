/*
    참조 : https://github.com/devyhan93/Swift/wiki/swift_syntex
 */

/*==========================================
            Constant, Variable
==========================================*/
// Constant
let constant:Int = 2
// constant = 1
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

sum = inputA + inputB

// Variable
var variable: String = "값이 변해도 상관 없는 variable"
variable = "값이 변해도 변수이기 때문에 상관없다"
variable = "이름과 타입을 지정해둬도 변경할 수 있다"

/*==========================================
                DataType
==========================================*/
//Boolean
var someBool: Bool = true
someBool
someBool = false
// someBool = 0
// someBool = 1
// Int
var someInt: Int = -100
// someInt = 100.1
//UInt
var someUInt: UInt = 100
// someUInt = -100
// someUInt = someInt
// Float
var someFloat: Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
someDouble = 3

// Character
var someCharacter: Character = "🇰🇷"
someCharacter = "🌝"
someCharacter = "가"
someCharacter = "A"
// someCharacter = "안돼요"
someCharacter

// String
var someString: String = "문자열 입니다"
someString = someString + " 뒤에 오는 문자열 입니다"
someString

// someString = someCharacter
// someDouble = someFloat
/*==========================================
           Any, AnyObject, nil
==========================================*/
// Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능하다"
someAny = 123.12

// let someDouble: String = "타입을 지정해줘야합니다"
// AnyObject
class SomeClass {}
var someAnyObject: AnyObject = SomeClass()

// someAnyObject = 123.12
// nil
// var someAny: Any = 100
// var someAnyObject: AnyObject = SomeClass()
// someAny = nil
// someAnyObject = nil
/*==========================================
            Collection Types
==========================================*/
// Array
var john: Array<String> = Array<String>()
var john2: Array<Int> = []
var john3: [Double] = Array<Double>()
var john4: [Any] = [Any]()
var john5: [Character] = []
var john6 = [Float]()

john.append("일번")
john.append("이번")
john2.append(9312311216014)
john3.append(3.141592)
john4.append("🦄🌈⭐️")
john5.append("🔥")
john6.append(3.14)

john
john2
john3
john4
john5
john6

// Dictionary
// var anyDictionary: Dictionary<String, Any> = [String: Any]()
// var anyDictionary: Dictionary <String, Any> = Dictionary<String, Any>()
// var anyDictionary: Dictionary <String, Any> = [:]
// var anyDictionary: [String: Any] = Dictionary<String, Any>()
// var anyDictionary: [String: Any] = [String: Any]()
// var anyDictionary: [String: Any] = [:]
var anyDictionary = [String: Any]()

anyDictionary["someKey"] = "100"
anyDictionary["anotherKey"] = "value"

anyDictionary

// Set
var integerSet: Set<Int> = Set<Int>()

integerSet.insert(1)
integerSet.insert(2)
integerSet.insert(2)
integerSet.insert(1)
integerSet.insert(100)

integerSet

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union: Set<Int> = setA.union(setB)
union

// 합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
sortedUnion

// 교집합
let intersection: Set<Int> = setA.intersection(setB)
intersection

// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
subtracting

/*==========================================
                Function
==========================================*/

func greating(friend: String, me: String = "me"){
    print("Hello \(friend)! I'm \(me)")
}

greating(friend: "john")

func ageing(friend: String, age: Int = 20){
    print("My Name is \(friend), \(age) years old!")
}

func myName() {
    print("조요한")
}

greating(friend: "조요한")
ageing(friend: "john")
myName()

// 데이터 타입함수
var someFunction: (String, String) -> Void = greating(friend:me:)

someFunction("요한", "john")
someFunction("요한2", "john2")

// 가변 매개변수, 전달인자 레이블 활용
/*
 to, from = 전달인자 레이블
 me, friends = 매개변수
 */
// 함수 내부에서는 매개변수를 사용
func sayHelloToFriends(to me: String, from friends: String) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
// 함수 외부에서는 전달인자 레이블을 사용
sayHelloToFriends(to: "yhan", from: "devyhan93")

/*==========================================
            if-else, switch
==========================================*/
// if-else
let someInteger = 100

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
} // 100

// 스위프트의 조건에는 항상 Bool 타입이 들어와야 합니다.
// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
// 컴파일 오류가 발생합니다.
//if someInteger { }

// switch
// 범위 연산자를 활용하면 더욱 쉽고 유용합니다
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
} // 100

// 정수 외의 대부분의 기본 타입을 사용할 수 있습니다
switch "yagom" {
case "jake":
    print("jake")
case "mina":
    print("mina")
case "yhan":
    print("yhan!!")
default:
    print("unknown")
}

/*==========================================
        for-in, switch, repeat-while
==========================================*/
for i in 1...10 {
    print(i)
}

var i = 1
while i <= 10 {
    print(i)
    i += 1
}

repeat {
    print(i)
    i += 1
} while i <= 10


var integers = [1, 2, 3]
let people = ["yhan": 10, "eric": 15, "mike": 12]

for integer in integers {
    print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입입니다
for (name, age) in people {
    print("\(name): \(age)")
}

while integers.count > 1 {
    integers.removeLast()
}


repeat {
    integers.removeLast()
} while integers.count > 0

/*==========================================
                class
==========================================*/

class Student{
    // 가변 프로퍼티
    var name: String = "unknown"
    
    // 키워드도 `로 묶어주면 이름으로 사용 가능
    var `class`: String = "Swift"
    
    // 타입 메서드
    class func selfIntroduce() {
        print("학생 타입 입니다.")
    }
    
    // 인스턴스 메서드
    // self는 인스턴스 자신을 지칭하며, 몇몇 경우를 제외하고 사용은 선택사항
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

// 타입 메서드 사용
Student.selfIntroduce() // 학생 타입 입니다.
// Student class의 메서드인 selfInteroduce()를 호출

// 인스턴스 생성
var yhan: Student = Student()
yhan.name = "요한"
yhan.class = "스위프트"
yhan.selfIntroduce()
dump(yhan.name)

// 인스턴스 생성
let jina: Student = Student()
jina.name = "조지나"
jina.class = "급식"

jina.name = "지나"
jina.selfIntroduce()
// 불변 인스턴스를 생성하면 기존 프로퍼티에 저장된 값을 그대로 가져온다

