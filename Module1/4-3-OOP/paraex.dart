class Student
{

    var fname;
    var lname;
    var email;

    //parameterized
    Student(var f,var l,var e)
    {
          fname = f;
          lname = l;
          email = e;
    }

    void display()
    {
      print("Your Firstname is $fname");
      print("Your Lastname is $lname");
      print("Your Email is $email");
    }

}
void main()
{
    //parameterized Constructor
    var s1 = Student("Mitesh","XyZ","m@gmail.com");
    var s2 = Student("Jenil","XyZ","m@gmail.com");
    var s3 = Student("Safil","XyZ","m@gmail.com");

    s1.display();
    s2.display();
    s3.display();

}

