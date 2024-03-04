class Count
{
  static var count =0;

  //static will resue the same memory allocation


  Count()
  {
    count++;
    print(count);
  }


}
void main()
{
  var c1 = Count();
  var c2 = Count();
  var c3 = Count();

}