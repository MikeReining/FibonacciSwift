// Playground - noun: a place where people can play

import UIKit

// create custom operator for Square Root

prefix operator √ {}
prefix func √ (number: Double) -> Double {
    return sqrt(number)
}

// Fibonacci number math formula
// an = [ Phin - (phi)n ]/Sqrt[5]

var Phi = (1 + √5) / 2
var phi = (1 - √5) / 2

var a = 1
var b = 4

pow(Double(a),Double(b))


func fibonacciNumber(nthNumber:Double) -> Double {
    var PhiToN = pow(Phi, nthNumber)
    var phiTon = pow(phi, nthNumber)
    
    
    return (PhiToN - phiTon) / √5
}

fibonacciNumber(10)





