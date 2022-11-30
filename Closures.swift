import Foundation

//Closure -  is a function without func keyword

//What are closures

//When to use closures

// How to use closures

// func addTwoNumbers(number1: Int, number2: Int) -> Int {
//     return number1 + number2
// }

var additionOfTwoNumbers: (Int, Int) -> Int = {
    (number1, number2) in return number1 + number2
}

var subtractionOfTwoNumbers: (Int, Int) -> Int = {$0 - $1}

let result = additionOfTwoNumbers(10,20)
print(result)

let subtractResult = subtractionOfTwoNumbers(20,10)
print(subtractResult)

// You can assign a function in a variable and it still works the same