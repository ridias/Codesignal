function Scream(n) {        
    basic = "AHH"
    str = "AHH"
    i = 0
    
    lengths = [3]
    number = 3
    start = 7
    while(number + start <= n){
        number += start
        start = start * 2 + 1
        lengths.push(number)
        str = str + basic + "H" + str
        basic += "H"
        i++
    }
    
    basic += "H"
    
    if(n > lengths[lengths.length - 1] + basic.length){
        return str[n - basic.length - lengths[lengths.length - 1] - 1]
    }else if(n > lengths[lengths.length - 1]){
        return (str + basic)[n - 1]
    }else{
        return str[n - 1]
    }
}

console.time("Hello")
let result = Scream(1000000000)
console.log(result)
console.timeEnd("Hello")