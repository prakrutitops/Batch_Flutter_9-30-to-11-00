class A1
{

    A1()
    {
      print("A1");
    }
    //named constructor
    A1.tops()
    {
      print("B1");
    }

}
void main()
{
  var a1 = A1.tops();
  var a2 = A1();


}