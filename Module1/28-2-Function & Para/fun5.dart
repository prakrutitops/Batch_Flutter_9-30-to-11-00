import 'dart:math';

//optional parameter []
detail(var name,var surname,[var email,var mob])
{
    print("Your name is $name");
    print("Your surname is $surname");
    print("Your email is $email");
    print("Your mobile is $mob");
}

void main()
{
  detail("darshan", "xyz", "darshan@gmail.com", "1234567890");
  detail("jenil", "xyz", "jenil@gmail.com");
  detail("safil", "xyz");
}