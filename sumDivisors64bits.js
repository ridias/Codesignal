function sumDivisors(n){

    console.time()
    let start = Math.round(Math.sqrt(n))
    let sum = 0
    let count = 0
    while(n % 2 == 0 && n > 1){
        count++
        n /= 2
    }

    if(count > 0){
        d = (2 ** (count + 1) - 1) / (2 - 1)
        sum == 0 ? sum = d : sum *= d
    }

    for(let i = 3; n > 1; i+= 2){
        count = 0
        
        if(n % i == 0){
            while(n % i == 0 && n > 1){
                count++
                n /= i
            }

            if(count > 0){
                d = (i ** (count + 1) - 1) / (i - 1)
                sum == 0 ? sum = d : sum *= d
            }
        }
    }

    console.timeEnd()
    return sum
}

function isPrime(n){
    if(n % 2 == 0 && n != 2) return false
    if(n % 5 == 0 && n != 5) return false

    for(let i = 7; i * i <= n; i+=2){
        if(n % i == 0){ return false }
    }
    return true
}

function sumDivisors2(n){
    console.time()
    s = 0
    l = Math.sqrt(n)
    for(i = 1; i <= l; i++) n % i == 0 & n / i == i ? s += i : n % i == 0 ? s += i + (n / i) : 0 
    console.timeEnd()
    return s
}


function sumDivisors3(n){
    

    
}


console.log(sumDivisors2(1272306049005393))
console.log(sumDivisors(1272306049005393))