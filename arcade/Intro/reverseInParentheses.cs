string resverseInParentheses(string inputString){
    Stack stack = new Stack();

    for(int i = 0; i < inputString.Length; i++){
        if(inputString[i] == "(") stack.Push(i);
        if(inputString[i] == ")"){
            int pos = stack.Pop();
            string value = String.Join("", Array.Reverse(inputString.Substring(pos, i - pos).Split("")));
            inputString = inputString.substring(0, pos - 0) + value + inputString.substring(i, inputString.Length - i);
        }
    }


    return Regex.Replace(inputString, @"[\(\)]", "");
}