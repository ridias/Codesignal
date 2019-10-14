bool checkPalindrome(string inputString) {
    
    int i = 0;
    int j = inputString.Length - 1;
    
    while(i < j){
        if(inputString[i] != inputString[j]) return false;
        i++;
        j--;
    }
    return true;
}
