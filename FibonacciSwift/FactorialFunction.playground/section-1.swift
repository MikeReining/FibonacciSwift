// Playground - noun: a place where people can play

import UIKit

func factorial(number: Int) -> Int {
    if number == 0 {
        return 1
    }
    var fact = 1
    for i in 1...number {
        fact = fact * i
    }
    return fact
}

factorial(10)

func fib(n: Int) -> Int {
    return n < 2 ? n : (fib(n - 1) + fib(n - 2))
}

println(fib(8))       // prints 55


