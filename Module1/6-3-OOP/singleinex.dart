class A
{
    a()
    {
        print("A Called");
    }
}
class B extends A
{
  b()
  {
    print("B Called");
  }
}
void main()
{

    var b = B();

    b.a();
    b.b();
}