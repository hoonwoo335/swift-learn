import UIKit

// String을 반환하는 클로저
let myName: String = {
    return "JerryUhm"
}()

print(myName)

let myRealName = { (name: String) -> String in
    return "개발하는 \(name)"
}

myRealName("Jerry Uhm")

let myRealNameLigic = { (name: String) -> () in
    print("개발하는 \(name)")
}

myRealNameLigic("Niceguy Jerry")

// parameter closure

/*
 (String) -> Void
 func completion(param: String) {
    // do somethind
 }
 */
func sayHi(completion: () -> Void) {
    print("sayHi() called")
    sleep(2)
    completion()
}

sayHi(completion: {
    print("2초가 지났다. 1")
})

sayHi() {
    print("2초가 지났다. 2")
}

sayHi {
    print("2초가 지났다. 3")
}

func sayHiWithName(completion: (String) -> Void) {
    print("sayHiWithName called")
    sleep(3)
    completion("안녕하십니까?")
}

sayHiWithName { comment in
    print("3초 뒤 인사 - 1 \(comment)")
}
// 위의 클로저를 아래처럼 더 간편하게 줄일 수 있다.
sayHiWithName {
    print("3초 뒤 인사 - 2 \($0)")
}

func sayHiWithFullName(completion: (String,String) -> Void) {
    print("sayHiWithFullName called")
    sleep(3)
    completion("안녕하십니까?","좋은 하루 되세요~")
}

sayHiWithFullName { first, second in
    print("첫번쨰: \(first), 두번째: \(second)")
}
// 둘중에 하나를 안쓰고 싶은경우 _ 이걸로 생략 가능
//sayHiWithFullName { _, second in
//    print("두번째: \(second)")
//}

sayHiWithFullName {
    print("\($0) \($1)")
}

// optional closure

func sayHiOptional(completion: (() -> Void)? = nil) {
    print("sayHiOptional() called")
    sleep(2)
    completion?()
}

sayHiOptional()
sayHiOptional {
    print("이벤트를 받았다.")
}

// other closure type
var myNumbers: [Int] = [0,1,2,3,4,5,6,7,8,9]
print("myNumbers - \(myNumbers)")
//var mapWithNumbers = myNumbers.map { val in
//    "val:\(val*2)"
//}
var mapWithNumbers = myNumbers.map {
    "Number:\($0)"
}
print("myNumbers - \(mapWithNumbers)")
