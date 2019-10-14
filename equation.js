function equation(n) {
    let limit = Math.sqrt(n)
    let factors = []
    for(let i = 1; i <= limit; i++){
        if(n % i == 0){
            factors.push(i)
        }
    }
    
    for(let i = factors.length - 1; i >= 0; i--){
        if(factors[i] ** 2 + sum(factors[i]) * factors[i] - n == 0){
            return factors[i]
        }
    }
    return -1
    
}

function sum(num){
    let s = 0
    while(num > 0){
        s += num % 10
        num = Math.floor(num / 10)
    }
    return s
}

