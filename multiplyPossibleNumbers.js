function multiplyAllPossibleConcatenations(arr){
    let sum = 0
    for(let i = 0; i < arr.length; i++){
        sum += arr[i] * (a[i] + "").length + a[i]
        for(let j = i + 1; j < arr.length; j++){
            
            sum += arr[i] * (a[j] + "").length + a[j]
            sum += arr[j] * (a[i] + "").length + a[i]
        }
    }
    return sum
}

let arr = [10, 2]

//1010
//