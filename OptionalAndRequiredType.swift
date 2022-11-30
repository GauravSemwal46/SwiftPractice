import Foundation

//Optional and Required Type

class Person {
    var firstName: String = String() // Required type
    var middleName: String? //Optional type
    var lastName: String = String()// Required Type

    func printPersonInfo() {
        if(middleName != nil) {
            print("\(firstName) \(middleName!) \(lastName)") // Force execution
        } else {
            print("\(firstName) \(lastName)")
        }
    }
}

let objPerson = Person()

objPerson.firstName = "Gaurav"
objPerson.lastName = "Semwal"

objPerson.printPersonInfo()