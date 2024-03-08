class Student
{
    int add(var a,int b)
    {
      return a+b;
    }
    // double add(dynamic a,int b,int c)
    // {
    //   return a*b*c;
    // }

}
void main()
{
    var s= Student();
    print(s.add(2, 3));
}
