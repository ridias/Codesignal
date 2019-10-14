function adjacentElementsProduct(inputArray) {
    let max = inputArray[0] * inputArray[1];
    for(let i = 1; i < inputArray.length - 1; i++){
        if(max < inputArray[i] * inputArray[i+1]){
            max = inputArray[i] * inputArray[i+1]
        }
    }
    
    return max;
}
