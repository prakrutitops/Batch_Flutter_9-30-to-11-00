import 'dart:io';
void main()
{

      for(int i=1;i<=5;i++)
      {
        for(int j=1;j<=i;j++)
          {
            //stdout.write("*");
              //stdout.write(j);
              //stdout.write(i*i);
            //stdout.write(2*5);

              if(i==1)
              {
                stdout.write(2);
              }
              if(i==2)
              {
                stdout.write(2*2);
              }
              if(i==3)
              {
                stdout.write(2*2*2);
              }
              if(i==4)
              {
                  stdout.write(2*2*2*2);
              }
              if(i==5)
              {
                  stdout.write(2*2*2*2*2);
              }

          }
        print("");

      }

}