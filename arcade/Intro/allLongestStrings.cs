string[] allLongestStrings(string[] inputArray) {
    List<string> result = new List<string>();
    int maxLength = 0;
    for(int i = 0; i < inputArray.Length; i++){
        if(inputArray[i].Length > maxLength){
            result = new List<string>();
            maxLength = inputArray[i].Length;
            result.Add(inputArray[i]);
        }else if(inputArray[i].Length == maxLength){
            result.Add(inputArray[i]);
        }
    }
    
    return result.ToArray();
}
