abstract class M
{
  m()
  {
    print("m called");
  }
  m1();
}
abstract class N
{
  n()
  {
    print("n called");
  }
  n1();
}


class Y implements M,N
{
  @override
  m() {
      print("m called");
  }

  @override
  m1() {
    // TODO: implement m1
    print("m1 called");
  }

  @override
  n() {
    // TODO: implement n
    print("n called");
  }

  @override
  n1() {
    // TODO: implement n1
    print("n1 called");
  }

}
void main()
{
  var y1 = Y();
  y1.m();
  y1.m1();
  y1.n();
  y1.n1();
}