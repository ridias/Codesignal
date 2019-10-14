function checkPalindrome(inputString) {
    let i = 0
    let j = inputString.length - 1
    while (i < j){
        if(inputString[i] != inputString[j]) return false;
        i++;
        j--;
    }
    return true;
}
