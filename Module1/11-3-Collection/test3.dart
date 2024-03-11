void main()
{

  //pair -> key,value
  Map<String, int> countryDialingCode =
  {         // Method 1: Using Literal
    "USA": 1,
    "INDIA": 91,
    "PAKISTAN": 92
  };

  print(countryDialingCode);

  Map<String, String> fruits = Map();             // Method 2: Using Constructor
  fruits["apple"] = "red";
  fruits["banana"] = "yellow";
  fruits["guava"]  = "green";

  print(fruits["apple"]);//find value from key

  print(fruits.containsKey("apple"));

  fruits.update("apple", (value) => "green");
  print(fruits);

  fruits.remove("apple");

  print(fruits);

 print(fruits.isEmpty);
 print(fruits.length);

  print("----------------------");

  for (String key in fruits.keys)
  {           // Print all keys
    print(key);
  }
}