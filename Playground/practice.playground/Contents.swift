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
print(someCharacter)

// String
var someString: String = "문자열 입니다"
someString = someString + " 뒤에 오는 문자열 입니다"
print(someString)

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
                Array
==========================================*/
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

