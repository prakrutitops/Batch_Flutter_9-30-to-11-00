class thisk1
{

  var id;
  var name;


  //parameterized
  thisk1(var id,var name)
  {
    this.id=id;
    this.name=name;
  }

  void display()
  {
      print("Your id is $id");
      print("Your name is $name");
  }

}
void main()
{
  //parameterized Constructor
  var s1 = thisk1(101,"a");
  var s2 = thisk1(102,"b");


  s1.display();
  s2.display();


}

