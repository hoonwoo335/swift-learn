import UIKit


var someValue : Int?

if someValue == nil {
    someValue = 90
}
// 변수에 값이 있는지 체크
if let otherValue = someValue {
    print("값이 있다. otherValue : \(otherValue)")
}
else {
    print("값이 없다.")
}

someValue = nil
// 값이 없을때 기본값 설정
let newValue = someValue ?? 10
print("newValue: \(newValue)")

var emptyValue: Int?

testFunc(newValue)
testFunc(emptyValue)

func testFunc(_ param: Int?) {
    print("testFunc() called")
    
    guard let unWrappedParam = param else { return }
    print("unWrappedParam: \(unWrappedParam)")
}
