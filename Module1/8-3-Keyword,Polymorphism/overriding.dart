class Rbi
{
  int rate()
  {
    return 0;
  }
}
class Sbi extends Rbi
{
  int rate()
  {
    return 7;
  }
}
class Icici extends Rbi
{
  int rate()
  {
    return 8;
  }
}
class Axis extends Rbi
{
  int rate()
  {
    return 9;
  }
}
void main()
{
  // var s1 = Sbi();
  // var i1 = Icici();
  // var a1 = Axis();
  //
  // print(s1.rate());
  // print(i1.rate());
  // print(a1.rate());


  var r = Rbi();//Refrence variable

  r = Sbi();
  print(r.rate());

  r = Icici();
  print(r.rate());

  r = Axis();
  print(r.rate());




}