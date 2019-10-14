int commonCharacterCount(string s1, string s2) {
    int[] asciiLettersS1 = new int[26];
    int[] asciiLettersS2 = new int[26];
    int ascii = 0;
    int count = 0;
    for(int i = 0; i < s1.Length; i++){
        ascii = (int)s1[i] - 97;
        
        if(asciiLettersS1[ascii] == 0){
            asciiLettersS1[ascii] = 1;
        }else{
            asciiLettersS1[ascii] += 1;
        }
        
    }
    
    for(int i = 0; i < s2.Length; i++){
        ascii = (int)s2[i] - 97;
        
        if(asciiLettersS2[ascii] == 0){
            asciiLettersS2[ascii] = 1;
        }else{
            asciiLettersS2[ascii] += 1;
        }
    }
    
    for(int i = 0; i < asciiLettersS1.Length; i++){
        count += Math.Min(asciiLettersS1[i], asciiLettersS2[i]);
    }
    
    return count;
}
