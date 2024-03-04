class Details
{
    var fname,lname,email,gender;

    display()
    {
      print("Your Firstname is $fname");
      print("Your Lastname is $lname");
      print("Your Email is $email");
      print("Your Gender is $gender");
    }

}
void main ()
{
    var d1 = Details();

    d1.fname="Mitesh";
    d1.lname="xyz";
    d1.email="m@gmail.com";
    d1.gender="Male";

    var d2 = Details();

    d2.fname="Jenil";
    d2.lname="xyz";
    d2.email="j@gmail.com";
    d2.gender="Male";



     d1.display();
     d2.display();



}