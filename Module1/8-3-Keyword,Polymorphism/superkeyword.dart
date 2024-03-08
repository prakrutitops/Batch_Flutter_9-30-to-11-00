class MyColor
{
    var color="black";
}
class MyColor2 extends MyColor
{
    var color="white";

    displaycolor()
    {
      print(color);//
      print(super.color);//parent class value
    }

}
void main()
{
  var m2 = MyColor2();
  m2.displaycolor();
}