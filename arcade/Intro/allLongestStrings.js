function allLongestStrings(inputArray) {
    var maxLength = 0
    for(let i = 0; i < inputArray.length; i++){
        if(maxLength < inputArray[i].length){
            maxLength = inputArray[i].length
        }
    }
    
    return inputArray.filter(function(value){
        return value.length == maxLength
    })
}
