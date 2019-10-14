function commonCharacterCount(s1, s2) {
    let count = 0
    let asciiLettersS1 = new Array(26).fill(0)
    let asciiLettersS2 = new Array(26).fill(0)
    let ascii = 0
    
    for(let i = 0; i < s1.length; i++){
        ascii = s1[i].charCodeAt(0) - 97
        
        asciiLettersS1[ascii] == 0 ? asciiLettersS1[ascii] = 1 : asciiLettersS1[ascii] += 1 
    }
    
    for(let i = 0; i < s2.length; i++){
        ascii = s2[i].charCodeAt(0) - 97
        
        asciiLettersS2[ascii] == 0 ? asciiLettersS2[ascii] = 1 : asciiLettersS2[ascii] += 1 
    }
    
    for(let i = 0; i < asciiLettersS1.length; i++){
        count += Math.min(asciiLettersS1[i], asciiLettersS2[i])
    }
    return count
}
