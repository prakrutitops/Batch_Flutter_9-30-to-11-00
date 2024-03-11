void main()
{

  try
  {
   //logic

    int geek = 10;
    var geek2 = geek ~/ 0;
    print(geek2);
  }
  catch(e)
  {
    //catch value generate
    print(e.toString());

  }
  finally
  {
    print("success");
  }
}