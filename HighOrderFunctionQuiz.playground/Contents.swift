// Square of Sum
// 총 합의 제곱 구하기
func squareOfSums(_ num: Int) -> Int {
    var result = 0
    
    /*
    for item in 1...num {
        result += item
    }*/
    
    result = Array(1...num).reduce(0, +)
    return result * result
}

assert(225 == squareOfSums(5))
assert(3025 == squareOfSums(10))

// Sum of Square
// 각 원소 제곱의 합

func sumOfSquares(_ num: Int) -> Int {
    var result = 0
    
    /*
    for item in 1...num {
        result += item * item
    }*/
    
    result = Array(1...num).reduce(0, {$0 + $1 * $1})
    return result
}

assert(55 == sumOfSquares(5))
assert(385 == sumOfSquares(10))
