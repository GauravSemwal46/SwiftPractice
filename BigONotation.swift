import Foundation

//Brute force approach to find if two array contains common element.
func commonElementBrute(_ a:[Int],_ b:[Int])->Bool {
    //Looping twice o(n^2) time complexity. O(1) space complexity.
    for  i in 0..<a.count {
        for j in 0..<b.count {
            if(a[i] == b[j]) {
                return true;
            }
        }
    }
    return false;
}

print(commonElementBrute([1,2,3],[4,5,6]));
print(commonElementBrute([1,2,3],[4,5,3]));

//Optimise approach for the same question.
func commonElementHash(_ A:[Int], _ B:[Int])->Bool {
    var hashA = [Int: Bool]();
    //Still looping twice but time complexity is O(2N) and space complexity is O(N)
    for a in A {
        hashA[a] = true;
    }
    for b in B {
        if(hashA[b] == true) {
            return true;
        }
    }
    return false; 
}

print(commonElementHash([1,2,3],[4,5,6]));
print(commonElementHash([1,2,3],[4,5,3]));
