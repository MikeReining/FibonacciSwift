// Playground - noun: a place where people can play

import UIKit


func nthFibonnaciNumber(number: Int) -> Int {
    var first = 0
    var second = 1
    var next: Int
    var nthNumber = 0
    
    for n in 0...number {
        if n <= 1 {
            next = n
        } else {
            next = first + second
            first = second
            second = next
            nthNumber = next
        }
        println(next)
    }
    return nthNumber
}

nthFibonnaciNumber(10)
nthFibonnaciNumber(5)
