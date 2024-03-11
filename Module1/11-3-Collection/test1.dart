void main()
{
    //fixed list
    List<int> numberlist = [1,2,3,4,5];
    //print(numberlist.toString());

    //growable
    numberlist.add(8);//add

    List<int> numberlist2 = [11,22,33,44,55];

    numberlist.addAll(numberlist2);//addaLL

    numberlist.remove(22);//remove object value
    numberlist.removeAt(5);//remove index

    print("Total data are :"+numberlist.length.toString());

    for(var data2 in numberlist)
    {
        print(data2);
    }




}
