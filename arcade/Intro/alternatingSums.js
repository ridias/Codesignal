function alternatingSums(a) {
    let result = [0, 0]
    for(let i = 0; i < a.length; i++){
        i % 2 == 0 ? result[0] += a[i] : result[1] += a[i]
    }
    return result
}