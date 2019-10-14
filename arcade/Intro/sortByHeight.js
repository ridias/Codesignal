function sortByHeight(a) {
    let values = []
    
    for(let i = 0; i < a.length; i++){
        if(a[i] != -1) values.push(a[i])
    }
    
    values.sort((b, c) => b - c)
    
    for(let i = 0; i < a.length; i++){
        if(a[i] != -1) a[i] = values.shift()
    }
    
    return a
}