import 'dart:math';

//named parameter{}
detail({var name,var surname,var email,var mob,var pincode,var marks})
{
    print("Your name is $name");
    print("Your surname is $surname");
    print("Your email is $email");
    print("Your mobile is $mob");
    print("Your pincode is $pincode");
    print("Your marks is $marks");
}

void main()
{
    detail(surname: "xyz",name: "deep",email: "d@gmail.com",mob: "123456",pincode: "123456",marks: "65");
}