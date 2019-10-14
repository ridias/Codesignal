function life(initialState, time) {
    console.time()
    let positions = [[-1,0],[1,0],[-1,-1],[-1,1],[1,-1],[1,1],[0,1],[0,-1]]
    
    while(time > 0){
        let count = 0
        let count2 = 0
        for(let i = 0; i < initialState.length; i++){
            if(initialState[i][0] == "#") count++
            if(initialState[i][initialState[i].length - 1] == "#") count2++
            
            if(count >= 3 && count2 >= 3) break
        }
        
        if(count >= 3 && count2 >= 3){
            for(let i = 0; i < initialState.length; i++){
                initialState[i].unshift(".")
                initialState[i].push(".")
            }
        }else if(count >= 3){
            for(let i = 0; i < initialState.length; i++) initialState[i].unshift(".")
        }else if(count2 >= 3){
            for(let i = 0; i < initialState.length; i++) initialState[i].push(".")
        }
        
        count = 0
        count2 = 0
        
        for(let i = 0; i < initialState[0].length; i++){
            if(initialState[0][i] == "#") count++
            if(initialState[initialState.length - 1][i] == "#") count2++
            if(count >= 3 && count2 >= 3) break
        }
        
        if(count >= 3 && count2 >= 3){
            initialState.unshift(new Array(initialState[0].length).fill("."))
            initialState.push(new Array(initialState[0].length).fill("."))
        }else if(count >= 3){
            initialState.unshift(new Array(initialState[0].length).fill("."))
        }else if(count2 >= 3){
            initialState.push(new Array(initialState[0].length).fill("."))
        }
        
        let arr = []
        
        for(let i = 0; i < initialState.length; i++) arr.push(new Array(initialState[0].length).fill("."))
        
        for(let i = 0; i < initialState.length; i++){
            for(let j = 0; j < initialState[i].length; j++){
                let count = 0
                for(let k = 0; k < positions.length; k++){
                    if(i + positions[k][0] < initialState.length && i + positions[k][0] >= 0 && j + positions[k][1] < initialState[0].length && j + positions[k][1] >= 0){
                        if(initialState[i+positions[k][0]][j+positions[k][1]] == "#") count++
                    }
                }
                
                if(count < 2 && initialState[i][j] == "#"){
                    arr[i][j] = "."
                }else if(count > 3 && initialState[i][j] == "#"){
                    arr[i][j] = "."
                }else if(count == 3 && initialState[i][j] == "."){
                    arr[i][j] = "#"
                }else{
                    arr[i][j] = initialState[i][j]
                }
            }
        }
        
        if(time <= 1000){
            console.log("start")
            for(let i = 0; i < arr.length; i++){
                console.log(arr[i].join(""))
            }
        }
        
        initialState = arr
        
        time--
    }
    console.timeEnd()
    return trim(initialState)
}

trim = g => {
    
    if(g.length == 0) return []
    
    p = [g[0].length, 0]
    r = []
    z = []
    for(i in g){
        
        for(j = 0; j <= Math.floor(g[i].length / 2); j++){
            k = g[i].length - 1 - j
            if(g[i][j] == "#" | g[i][k] == "#") z.push(i)
            if(g[i][j] == "#" & j < p[0]) p[0] = j
            if(g[i][k] == "#" & k > p[1]) p[1] = k
        }
    }
    
    //z.sort((a, b) => a - b)
    
    for(i = z[0]; i <= z[z.length - 1]; i++) r.push(g[i].slice(p[0], p[1]+1))
    return r
}

let test = [["#","."], 
[".","#"], 
["#","."], 
[".","#"], 
["#","."], 
[".","#"], 
["#","."], 
[".","#"], 
["#","."], 
[".","#"], 
["#","."], 
[".","#"], 
["#","."], 
[".","#"], 
["#","."], 
[".","#"]]

console.log(life(test, 1000))


/*
 * .#.#.
 * ..#..
 * .#.#.
 * ..#..
 */
