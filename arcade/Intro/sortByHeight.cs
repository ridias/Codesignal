
int[] sortByHeight(int[] a) {
    
    List<int> values = new List<int>();
    
    for(int i = 0; i < a.Length; i++){
        if(a[i] != -1) values.Add(a[i]);
    }
    
    values.Sort();
    
    int pos = 0;
    
    for(int i = 0; i < a.Length; i++){
        if(a[i] != -1){
            a[i] = values[pos];
            pos++;
        }
    }
    
    return a;
}