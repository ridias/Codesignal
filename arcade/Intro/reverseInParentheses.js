function reverseInParentheses(inputString) {
    let positions = []
    let stack = []
    for(let i = 0; i < inputString.length; i++){
        if(inputString[i] == "("){ stack.push(i) }
        if(inputString[i] == ")"){ 
            let pos = stack.pop()
            let value = inputString.substring(pos, i).split("").reverse().join("")
            inputString = inputString.substring(0, pos) + value + inputString.substring(i, inputString.length)
        }
    }
    
    return inputString.replace(/[\(\)]/g, "")
}