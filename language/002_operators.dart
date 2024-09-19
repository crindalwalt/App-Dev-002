void main() {
//  Operator
  /**
   * Arithmatic (+,-,*,/,%) proiroty
   * camparison (<,>,>=,<=,==)
   * assignment (=,+=,-=,*=,/=)
   * logical (and , or , not )
   */

  int num1 = 64;
  int num2 = 64;
  int result = num1 + num2;
  result = num2 - num1;
  result = num1 * num2;
  double division = num2 / num1;
  bool condition = num1 == num2;
  condition = num1 > num2;
  condition = num1 == num2 && num1 < 7;

  double val = 34;
  val /= 2;

  // print(condition);
  print("The answer is = ${condition}");
  // print(result);
  // print(division);

  /**
   * Assignment operaator
   */
  String university_name = "Islamia university" + " Bahawalpur";

  // bool age = 23 < 34;

  int age = 34;
  print("at initilazation: ");
  print(age);
  age = age + 1; //35
  print("at first mutation: ");
  print(age);
  age = age + 35; //70
  print("at second mutation: ");
  print(age);
  // print(age);
  age += 30;
  // age = age + 30;
  print("at third mutation: ");
  print(age);

  age -= 35;
  print("at fourth mutation: ");
  print(age);

  age *= 2;
  print("at fourth mutation: ");
  print(age);

  double age1 = 130;
  age1 /= 13;
  print("at fifth mutation: ");
  print(age1);

  int n1 = 124;
  int n2 = 34;
  int n3 = 332;

  bool andoperator = n1 < n2 && n1 < n3; // and operator
  bool oroperator = n1 == 34 || n2 >= 233; // Or operator
  print("AND && operator");
  print(!oroperator);
}
