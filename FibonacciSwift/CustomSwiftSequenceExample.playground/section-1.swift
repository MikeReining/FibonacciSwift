// Playground - noun: a place where people can play


// Example custom sequence to plot vertical line

struct MyGenerator:GeneratorType {
    var x,y,length:Int
    typealias Element = (Int,Int)
    mutating func next() -> Element? {
        x++
        y++
        length--
        if length > 0 {
            return (x,y)
        }
        else {
            return nil
        }
    }
}

struct MySequence:SequenceType {
    var x,y,length:Int
    typealias GeneratorType = MyGenerator
    func generate() -> GeneratorType {
        var gen = MyGenerator(x:x,y:y,length:length)
        return gen
    }
}

let seq = MySequence(x:10,y:10,length:10)

for point in seq {
    println(point)
}


