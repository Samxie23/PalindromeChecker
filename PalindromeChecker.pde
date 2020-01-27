public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
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
  String mate = onlyLetters(noSpaces(word.toLowerCase()));
  if(mate.equals(reverse(mate))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int last = str.length();
  for(int i = last;i>0;i--)
  {
  sNew = sNew + str.substring(i-1,i);  
  }
    return sNew;
}
public String noSpaces(String sWord){
  String yes = "";
  for(int i = 0;i<sWord.length();i++){
    if(Character.isLetter(sWord.charAt(i))){
      yes = yes + sWord.charAt(i);
    }
  }
  return yes;
}
public String onlyLetters(String sString){
  String bruh = "";
  for(int i = 0;i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i))){
      bruh = bruh + sString.charAt(i);
    }
  }
  return bruh;
}




