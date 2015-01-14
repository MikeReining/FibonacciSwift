// Playground - noun: a place where people can play

let intArray = [1,2,3,4,5,6]
for int in intArray {
    println(int)
}

//  There are two requirements that the SequenceType protocol makes of a Type that adopts it: (1) the type must contain a method to return an instance of a Type that adopts the GeneratorType protocol, (2) it must typealias the name of the generator type to GeneratorType. And these requirements in their barest form might look like this:

struct MySequence:SequenceType {
    typealias GeneratorType = MyGenerator
    func generate() -> GeneratorType {
        var gen = MyGenerator()
        return gen
    }
}

struct MyGenerator:GeneratorType {
    typealias Element = Bool
    func next() -> Element? {
        return nil
    }
}

