int matrixElementsSum(int[][] matrix) {
    
    int c = 0;

    for(int i = 0; i < matrix[0].Length; i++){
        
        for(int j = 0; j < matrix.Length; j++){
            
            if(matrix[j][i] == 0) break;
            c += matrix[j][i];
        }
    }
    
    return c;
}