class Student
{

    late String _name;
    late double _salary;

    //getter-setter[For Name]
    String get name => _name;

    set name(String value)
    {
      _name = value;
    }
    //getter-setter[For Salary]
    double get salary => _salary;

    set salary(double value)
    {
      _salary = value;
    }

//setter-getter
}
void main()
{
  var s1 = Student();

  s1._name="jenil";
  s1._salary=20000.000;

  print(s1.name);
  print(s1.salary);
}