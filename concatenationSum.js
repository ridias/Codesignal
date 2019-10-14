function concatenationsSum(a) {
    let map = {}
    let sum = 0

    a.sort((b, c) => b - c)
    
    for(let i = 0; i < a.length; i++){
        let first = 1 * ("" + a[i] + a[i])
        let acc = first
        let total = first
        let countPushes = 0
        let queue = []
        
        if(map[a[i]] == undefined){
            for(let j = i + 1; j < a.length; j++){
                if(a[j] == a[i]){
                    countPushes == 0 ? queue.push(acc) : queue.push(acc - first)
                    countPushes++
                    acc = 0
                }
                
                x = 1 * ("" + a[i] + a[j])
                y = 1 * ("" + a[j] + a[i])
                acc += x
                acc += y
                total += x + y
                
            }
            
            sum += total

            while(queue.length > 0){
                v = queue.pop()
                if(total - v - first < 0){
                    sum += (total - v)
                }else{
                    sum += (total - v - first)
                }
                total = total - v - first
            }
            
            
            map[a[i]] = 1
        }
    }
    console.log("Final result: " + sum)
    return sum
}


test = [1000000, 1000000, 1000000, 1000000] // 160000016000000
//test = [10, 10, 2] //5586
//test = [10, 2] //1344
//test = [1,2,1,3,1,1]

concatenationsSum(test)