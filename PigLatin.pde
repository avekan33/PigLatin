import java.util.*;
//dog
public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("There are " + lines.length + " lines.");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
	/*String hymn[] = loadStrings("LowellHymn.txt");
	System.out.println("There are "+ hymn.length+" lines.");
	ArrayList<String> total = new ArrayList<String>();
	int start;
	for(int j=0; j<hymn.length;j++)
	{
		start = 0;
		hymn[j].toLowerCase();
		for(int w=0; w<hymn[j].length(); w++)
		{
			if(hymn[j].substring(w,w+1).equals(" "))
			{
				total.add(hymn[j].substring(start,w));
				start = w+1;
			}

		}
	}
	for (int u = 0 ; u < total.size(); u++) {
	  System.out.println(pigLatin(total.get(u)));
	}*/
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  String temp;
  for(int i=0;i< sWord.length();i++)
  {
      temp = sWord.substring(i,i+1);
      if(temp.equals("a") || temp.equals("e") || temp.equals("i")||temp.equals("o") ||temp.equals("u"))
      {
          return i;
      }
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if(sWord.substring(0,2).equals("qu"))
	{
		return sWord.substring(2) + "quay";
	}
	else if(findFirstVowel(sWord) != 0)
	{
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
