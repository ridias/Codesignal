function lcdSegments(n) {
    r = 0
    if(!n) return 6
    while(n > 0){
        d = n % 10
        d == 1 ? r += 2 : d == 4 ? r += 4 : d == 7 ? r += 3 : d == 8 ? r += 7 : d == 2 & d == 3 && d == 5 ? r += 5 : r += 6 
        n = Math.floor(n/10)
    }
    return r
}


