import Foundation


//Rotate array to right N times

func solution(A:[Int], k:Int)->[Int] {
    guard !A.isEmpty else {return [];}

    guard k>0 else {return A;}
    
    var result = A;

    for _ in 1...k {
        result = rotateRightOnce(A:result);
    }

    return result;

} 

func rotateRightOnce(A:[Int])->[Int] {
    var newArray = Array<Int>(repeating:0,count:A.count);

    for index in 0..<A.count-1{
        newArray[index+1] = A[index];
    }
    newArray[0]=A.last!;
    return newArray;
}

print(solution(A:[1,2,3],k:5));

