func solution(inputString: String) -> Bool {
    var arr = Array(inputString)
    var set = Set(arr)
    var arr1: [Int] = []
    for i in set {
        var dem = 0
        for j in arr {
            if i == j {
                dem += 1
            }
        }
        arr1.append(dem)
    }
    var count = 0
    for i in arr1 {
        if i % 2 == 1 {
            count += 1
        }
    }
    return count <= 1
}


