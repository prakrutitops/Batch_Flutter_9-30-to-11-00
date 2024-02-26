import 'dart:io';

void main()
{

    print("Enter Your Firstname");
    String fname = stdin.readLineSync().toString();

    print("Enter Your Lastname");
    String lname = stdin.readLineSync().toString();

    print("Enter Your Age");
    int age =  int.parse(stdin.readLineSync().toString());

    print("Enter Your Marks");
    double marks = double.parse(stdin.readLineSync().toString());

    print("Your Firstname is $fname");
    print("Your Lastname is $lname");
    print("Your Age is $age");
    print("Your Marks is $marks");
}


//stdout - data write - Standard Output
//stdin - data read - Standard Input