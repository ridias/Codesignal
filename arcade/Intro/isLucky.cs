bool isLucky(int n) {
    string nStr = Convert.ToString(n);
    
    int i = 0;
    int j = nStr.Length - 1;
    
    int sum = 0;
    int sum2 = 0;
    
    while(i < j){
        sum += (int)nStr[i];
        sum2 += (int)nStr[j];
        i++;
        j--;
    }
    return sum == sum2;
}
