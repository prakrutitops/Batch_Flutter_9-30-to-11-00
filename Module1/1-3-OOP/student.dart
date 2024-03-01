//class Creation
class Student
{
  //data memeber or variables

  var name;
  var salary;

  display()
  {
    print("Your name is $name");
    print("Your salary is $salary");
  }

}
void main()
{
  //var objname = classname();
  var s1 = Student();//object creation
  var s2 = Student();

  s1.name="mitesh";
  s1.salary="20000";

  s2.name="darshan";
  s2.salary="21000";

  s1.display();
  s2.display();

}