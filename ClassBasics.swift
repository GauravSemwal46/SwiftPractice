import Foundation


//Class - Reference Type

class Calculator {

    var index: Int

    //Constructor Or on Swift we are saying it initializer
    init(userDefinedIndex: Int) {
        index = userDefinedIndex
    }
    
    //Methods
    func addTwoNumber(firstNumber: Int, secondNumber: Int) -> Int {
        print("Value of index =  \(index)")
        return firstNumber + secondNumber
    }

    func subtractTwoNumbers(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}

let objCalculator = Calculator(userDefinedIndex: 20)

print("Addition of two number = \(objCalculator.addTwoNumber(firstNumber:10, secondNumber:30))")
print("Subtraction of two number = \(objCalculator.subtractTwoNumbers(firstNumber:50, secondNumber:30))")

    