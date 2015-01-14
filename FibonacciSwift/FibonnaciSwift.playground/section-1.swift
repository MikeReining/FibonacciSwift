// Playground - noun: a place where people can play


//  A Fibonacci sequence is a sequence of numbers where each number is the sum of the two numbers before it. For example: 0 1 1 2 3 5 8 13 21 34.

//  You are going to build a program that calculates the nth Fibonacci number in two ways: iteration and recursion.

// Task 1 - Fibonacci by iteration

// Use For loop for specific number of times since n is know

func nthFibonnaciNumber (nthNumber: Int) {
    var fibonacciArray = [0,1]
    while fibonacciArray.count < nthNumber {
        fibonacciArray.append(fibonacciArray[fibonacciArray.count - 2] + fibonacciArray[fibonacciArray.count - 1])
    }
    fibonacciArray
    
    // Grab nth Fibonnaci number from array
    
    fibonacciArray[nthNumber - 1]
    
}

nthFibonnaciNumber(11)
