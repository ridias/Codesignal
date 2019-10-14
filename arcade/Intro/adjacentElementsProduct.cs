int adjacentElementsProduct(int[] inputArray) {
    int max = inputArray[0] * inputArray[1];
    
    for(int i = 2; i < inputArray.Length; i++){
        int num = inputArray[i] * inputArray[i-1];
        if(max < num) max = num;
    }
    return max;
}
