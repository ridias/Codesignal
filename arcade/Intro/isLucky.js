function isLucky(n) {
    let s = n.toString()
    
    let i = 0;
    let j = s.length - 1
    
    let sum = 0
    let sum2 = 0
    
    while(i < j){
        sum += parseInt(s[i])
        sum2 += parseInt(s[j])
        i++
        j--
    }
    
    return sum == sum2
}