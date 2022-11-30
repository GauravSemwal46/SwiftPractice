import Foundation


//Why are classes called as Refernce type

//Refernce type - When two object pointing to same memory location. Change in one reflects in other.

class Employee {

    var employeeId: Int = 1
    var departmentName: String = "Technical"
}

let objEmployee = Employee() //Memory address = 12345

print("Department name = \(objEmployee.departmentName)")

var objEmployee2 = objEmployee //Memory address = 12345

objEmployee2.departmentName = "Mechanical"
print("Department name = \(objEmployee.departmentName)")


    