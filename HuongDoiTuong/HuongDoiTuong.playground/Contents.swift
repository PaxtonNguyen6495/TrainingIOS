
protocol T {
    func callname(name: String) -> Int
}
protocol D {
    func callold(old: Int)
}

class A {
    var datasource: T?
    var delegate: D?
}

class B {
}

extension B: T, D {
    func callold(old: Int) {
        print(old)
    }
    func callname(name: String) -> Int {
        return name.count
    }
}

var a = A()
var b = B()
a.datasource = b
a.delegate = b
a.delegate!.callold(old: 1)
b.callname(name: "thao")
//b.callold(old: 1)
