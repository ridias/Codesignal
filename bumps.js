function separate(s){
    
    let word = ""
    let result = []
    let isNumber = /[0-9]/.test(s[0]) ? true : false
    for(let i = 0; i < s.length; i++){
        if(s[i] == " "){
            if(word.length > 0) result.push(word)
            result.push("¿")
            word = ""
        }else if(/[\W_]/.test(s[i])){
            result.push(word)
            word = ""
        }else if(/[0-9]/.test(s[i]) && !isNumber){
            result.push(word)
            word = "" + s[i]
            isNumber = true
        }else if(/[A-Za-z]/.test(s[i]) && isNumber){
            result.push(word)
            word = "" + s[i]
            isNumber = false
        }else{
            word += s[i]
        }
    }
    
    if(word.length > 0) result.push(word)
    return result
}

let arr = separate("Hello world!")

for(let i = 0; i < arr.length; i++){
    console.log(arr[i])
    console.log(arr[i].length)
}