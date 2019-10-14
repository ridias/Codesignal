function isPrime(n){
    if(n % 2 == 0 && n != 2) return false
    if(n % 5 == 0 && n != 5) return false

    for(let i = 7; i * i <= n; i+=2){
        if(n % i == 0){ return false }
    }
    return true
}

console.log(isPrime(49644271))
console.log(isPrime(280830413))

