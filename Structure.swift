import Foundation


//Structure - Value type

struct User {
    var name: String
    var age: Int 
    var address: String

    func printUserInfo() {
        print("User name is \(name) and age is \(age) and address is \(address)")
    }
}

let result = User(name: "Gaurav", age: 26, address: "Some Address")
var user2 = result // Value of result is copied to user1

result.printUserInfo()
user2.printUserInfo()

user2.name = "Ankush"
user2.age = 30
//Since structure is value type change in user2 doesn't have any effect in the result
result.printUserInfo()
user2.printUserInfo()

    