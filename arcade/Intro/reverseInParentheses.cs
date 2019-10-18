string resverseInParentheses(string inputString){
    Stack<int> stack = new Stack<int>();

    for(int i = 0; i < str.Length; i++){
        if(str[i] == '(') stack.Push(i);
        if(str[i] == ')'){
            int pos = stack.Pop();
            string text = str.Substring(pos+1, i - pos - 1);
            char[] charsText = text.ToCharArray();
            Array.Reverse(charsText);
            string reversedString = string.Join("", charsText);
            str = str.Substring(0, pos - 0 + 1) + reversedString + str.Substring(i, str.Length - i);
        }
    }
    
    return Regex.Replace(str, @"[\(\)]", "");
}