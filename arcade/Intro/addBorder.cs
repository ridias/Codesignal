string[] addBorder(string[] picture) {
    string stars = "";
    List<string> result = new List<string>();
    
    for(int i = 0; i < picture[0].Length + 2; i++) stars += '*';
    result.Add(stars);
    
    for(int i = 0; i < picture.Length; i++){
        result.Add("*" + picture[i] + "*");
    }
    
    result.Add(stars);
    
    return result.ToArray();
}
