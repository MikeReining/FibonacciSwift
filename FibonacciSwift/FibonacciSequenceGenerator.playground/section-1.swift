// Source: http://www.scottlogic.com/blog/2014/06/26/swift-sequences.html

class Fibonacci : SequenceType {
    typealias GeneratorType = FibonacciGenerator
    
    func generate() -> FibonacciGenerator {
        return FibonacciGenerator()
    }
}

class FibonacciGenerator : GeneratorType {
    var current = 0, nextValue = 1
    
    typealias Element = Int
    
    func next() -> Int? {
        let ret = current
        current = nextValue
        nextValue = nextValue + ret
        return ret
    }
}

let fib = Fibonacci().generate()
for _ in 1..<50 {
    println(fib.next())
}

