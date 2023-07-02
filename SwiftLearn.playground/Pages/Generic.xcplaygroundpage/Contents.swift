import UIKit


struct Friend {
    var name: String
}


struct MyArray<T> {
    var elements = [T]()
    
    init(_ elements: [T]) {
        self.elements = elements
    }
}

var myIntArr = MyArray([1,2,3])
print("myIntArr - \(myIntArr)")

var myStrArr = MyArray(["가","나","다"])
print("myStrArr - \(myStrArr)")

let friendA = Friend(name: "Jerry")
let friendB = Friend(name: "Lucy")
let friendC = Friend(name: "Michael")

var myFriendArr = MyArray([friendA,friendB,friendC])
print("myFriendArr - \(myFriendArr)")
