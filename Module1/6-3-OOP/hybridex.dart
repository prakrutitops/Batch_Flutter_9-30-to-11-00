class J
{
  j()
  {
    print("J Called");
  }
}
class K extends J
{
  k()
  {
    print("K Called");
  }
}
class L extends J
{
  l()
  {
    print("L Called");
  }
}
class M implements K,L
{
  m()
  {
    print("M Called");
  }

  @override
  j() {
    // TODO: implement j
    print("J Called");
  }

  @override
  k() {
    // TODO: implement k
    print("K Called");
  }

  @override
  l() {
    // TODO: implement l
    print("L Called");
  }
}
void main()
{
  var m = M();
  m.m();
  m.j();
  m.k();
  m.l();
}