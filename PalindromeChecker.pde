public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) 
  {
    if(palindrome(lines[i]) == true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{ 
  String regular = onlyLetters(word);
  String noCaps = regular.toLowerCase();
  String noSpace = noSpaces(noCaps);
  
if(noSpace.equals(reverse(noCaps))){
  return true;
}
return false;
}

public String noSpaces(String sWord){
return sWord.replaceAll(" ","");
}



public String onlyLetters(String sString){
  String answer = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      answer = answer + sString.substring(i,i+1);
  return answer;
  
}


public String reverse(String str)
{
  String answer = new String();
  for(int i = str.length() - 1; i >= 0; i--)
    answer = answer + str.charAt(i);
  return answer;
}
