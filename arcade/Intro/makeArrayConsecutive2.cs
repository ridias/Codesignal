int makeArrayConsecutive2(int[] statues) {
    
    Array.Sort(statues);
    int count = 0;
    
    for(int i = 1; i < statues.Length; i++){
        count += (statues[i] - statues[i-1] - 1);
    }
    return count;
}
