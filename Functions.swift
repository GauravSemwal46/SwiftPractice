import Foundation

//Function

class MyClass {

    //Normal function without parameter and return type
    func printUserName() {
        print("Gaurav")
    }

    //Function with parameters
    func printUserName(name: String) {
        print(name)
    }

    //Function with parameter and return type
    func isEvenNumber(number: Int) -> Bool{
        return number % 2 == 0
    } 

    //Function with default parameter value
    func printName(user name: String = "XCode") -> String {
        return name
    }

    //Function with multiple return type value
    func minMaxValue(array:Array<Int>) -> (maxValue: Int, minValue: Int) {
        guard !array.isEmpty else {return (0,0)}
        return (array.max() ?? 0, array.min() ?? 0)
    }
}

let obj = MyClass()

print(obj.minMaxValue(array:[1,13,14,90]))
print(obj.printName())
print(obj.isEvenNumber(number:3))
obj.printUserName()
obj.printUserName(name: "Gaurav Semwal")