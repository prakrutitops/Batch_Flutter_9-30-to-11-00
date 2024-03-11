void main()
{
  var t1 = Person();
  var msg = t1(25, "Peter");
  var msg2 = t1(26, "Peter1");
  print(msg);
  print(msg2);
}
class Person
{

  String call(int age, String name)
  {
    return "The name of the person is $name and age is $age";
  }
}
