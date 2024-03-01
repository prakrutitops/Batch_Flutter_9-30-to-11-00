import 'dart:io';
void main()
{

  for(int i=1;i<=5;i++)
  {
    for(int space=0;space<=(5-i);space++)
    {
      stdout.write(" ");
      //print(" ");
    }

    for(int j=1;j<=i;j++)
    {
      //print("*");
      stdout.write(i);
    }
    print("");
  }

}