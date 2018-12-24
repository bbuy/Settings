String s1 = "abc";
String s2 = "abc";

String str1 = new String("abc");
String str2 = new String("abc");

if (s1==s2)
    System.out.println("s1==s2");
else
    System.out.println("s1!=s2");

if (str1==str2)
    System.out.println("str1==str2");
else
    System.out.println("str1!=str2");

if (s1==str1)
    System.out.println("str1==s1");
else
    System.out.println("str1!=s1");