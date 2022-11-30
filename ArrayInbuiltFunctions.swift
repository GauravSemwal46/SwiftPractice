import Foundation


//Array inbuild functions that can be used

func collectionIsDivisibeBy2(arr: Array<Int>) -> Bool {
    guard !arr.isEmpty else { return false }
    return arr.allSatisfy({$0%2==0})  
}

func findTheLargestElement(from arr: Array<Int>)-> Int {
    guard !arr.isEmpty else { return 0 }
    return arr.max() ?? 0
}

func findTheSmallestElement(from arr: Array<Int>)-> Int {
    guard !arr.isEmpty else { return 0 }
    return arr.min() ?? 0
}

func getArraySum(arr: Array<Int>)->Int {
    guard !arr.isEmpty else { return 0 }
    return arr.reduce(0,{$0+$1})
}

func doesContain(elementWithName name: String, inCollections names: Array<String>)-> Bool {
    guard !names.isEmpty else { return false }
    return names.contains(where: {$0.caseInsensitiveCompare(name) == .orderedSame})
}
