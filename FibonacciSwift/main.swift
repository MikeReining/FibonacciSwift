//
//  main.swift
//  FibonacciSwift
//
//  Created by Michael Reining on 1/14/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation
import Cocoa

//  A Fibonacci sequence is a sequence of numbers where each number is the sum of the two numbers before it. For example: 0 1 1 2 3 5 8 13 21 34.

//  You are going to build a program that calculates the nth Fibonacci number in two ways: iteration and recursion.

// MARK: TASK 1

// Use For loop for specific number of times since n is know


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
    }
    println(nthNumber)
    return nthNumber
}

nthFibonnaciNumber(5)
nthFibonnaciNumber(5)
nthFibonnaciNumber(10)

// MARK: IMPLEMENTED FIBONACCI VIA MATH FORMULA FOR FUN
// create custom operator for Square Root

prefix operator √ {}
prefix func √ (number: Double) -> Double {
    return sqrt(number)
}

// Fibonacci number math formula
// Fibonacci = [ Phin - (phi)n ]/Sqrt[5]

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

var fibonnaci10 = fibonacciNumber(10)
println("\(fibonnaci10)")
var fibonnaci200 = fibonacciNumber(60)
println("\(fibonnaci200)")

