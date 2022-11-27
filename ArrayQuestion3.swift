import Foundation

/*
When someone searches their contacts based on the phone number, its nice if a list of contact pops up.

Write an algorithm that searches your contact if there are multiple
- No contact if contact can't be found
- A contact if a contact is found
- The first alphabetized contact if there are multiple

A=["JOHN", "JANE"] //Contacts return one of these 
B=["9897298763", "9897298736"] //Phone number for each contact A[i] = B[i]
P="9897" //Search Phrase
*/

public func solution(_ A: [String], _ B: [String], _ P: String) -> String {

    var result = [String]();
//looping through looking for match - if found add to result
    for i in 0..<B.count {
        if (B[i].contains(P)) {
            result.append(A[i]);
        }
    }

    return result.sorted().first ?? "NO CONTACT";
} 

var A=["JOHN", "JANE"] 
var B=["9897298763", "9897298736"] 
var P="9897298" 

print(solution(A,B,P));