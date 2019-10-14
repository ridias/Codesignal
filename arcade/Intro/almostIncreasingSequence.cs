bool almostIncreasingSequence(int[] sequence) {
    
    bool find = false;
    for(int i = 1; i < sequence.Length; i++){
        if(sequence[i] <= sequence[i-1]){
            if(find) return false;
            find = true;
            
            if(i == 1 || i + 1 == sequence.Length) continue;
            else if(sequence[i] > sequence[i-2]) sequence[i-1] = sequence[i-2];
            else if(sequence[i - 1] >= sequence[i+1]) return false;
        }
    }
    
    return true;
}
