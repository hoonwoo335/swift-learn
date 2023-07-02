//memberwise initializer 때문에 좋다.
//생성자를 만들지 않아도 좋다. 알아서 만들어줌

// Struct (call by value)
struct YoutuberStruct {
    var name: String
    var subscribersCount: Int
}

var devUhm = YoutuberStruct(name: "제리", subscribersCount: 9999)

// 값복사
var devUhmClone = devUhm
print("devUhmClone.name: \(devUhmClone.name)")
devUhmClone.name = "aaaaaa"
print("devUhmClone.name change: \(devUhmClone.name)")
print("devUhm.name: \(devUhm.name)")

// Class (call by reference)
class YoutuberClass {
    var name: String
    var subscribersCount: Int
    
    //생성자: 메모리에 올린다.
    init(_ name: String, _ subscribersCount: Int) {
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var devUhmCls = YoutuberClass("devUhmCls", 9999)
var devUhmClsClone = devUhmCls
print("devUhmClsClone.name: \(devUhmClsClone.name)")
devUhmClsClone.name = "aaaaaa"
print("devUhmClsClone.name change: \(devUhmClone.name)")
print("devUhmCls.name: \(devUhmCls.name)")

