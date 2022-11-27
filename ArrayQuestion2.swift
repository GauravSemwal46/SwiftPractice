import Foundation

/*Would like to reformat the phone number string so that
-every third character is a '-'
-spaces and dashes doesn't matter
-if the block ends in anything other than -xxx or -xx reformat to a block of two like xx-xx(not obivous)*/

func solution(_ S:String)->String {

    //removing spaces and dashes
    let noSpace = S.replacingOccurrences(of: " ", with:"");
    let noSpaceNoDash = noSpace.replacingOccurrences(of: "-", with:"");

    //looping through char-by-char and append dashes
    var result = ""
    var count = -2;
    for c in noSpaceNoDash {
        result.append(c);
        if(count%3==0) {
            result.append("-");
        }
        count+=1;
    }

    //strip off lingering dash
    if(result.last == "-") {
        result = String(result.dropLast());
    }

    //if second last char is -x
    //reformat last three char as -xx
    var chars = Array(result);
    let secondLastPtr = chars.count-2;
    if(chars[secondLastPtr] == "-") {
        chars[secondLastPtr] = chars[secondLastPtr-1];
        chars[secondLastPtr-1] = "-";
    }


    return String(chars);
}

print(solution("12345678"))

solution("12    34----78")
