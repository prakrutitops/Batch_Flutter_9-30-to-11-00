class thisk1
{

  var id;
  var name;
  static var college="Atmiya";//static variable

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
    print("Your college is $college");
  }

  static change()
  {
    college="VVP";
  }

}
void main()
{
  //parameterized Constructor

  thisk1.change();

  var s1 = thisk1(101,"a");
  var s2 = thisk1(102,"b");


  s1.display();
  s2.display();



}

