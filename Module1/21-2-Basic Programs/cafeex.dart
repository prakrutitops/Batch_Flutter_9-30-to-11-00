import 'dart:math';

void main()
{

    int num = 3;
    int pizza=100;
    int burger=70;
    int coffee=120;
    int total=0;

    switch(num)
    {
      case 1:
          total+=pizza;
          print(total);
       break;

      case 2:
            total+=burger;
            print(total);
      break;

      case 3:
          total+=coffee;
          print(total);
      break;

    }


}