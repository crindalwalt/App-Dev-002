import '006_test.dart';

void main() {
/**
 * FUNCTION => a block of code that inhabits a functionality and called on demand and can be reuseable
 * ? has 2 components
 *  function bnana (Function Definition)
 *  function Chalana (Function Call)
 * 
 * ? topics
 *  return type
 *  parameters and arguments 
 */

//function call
  String nam1 = "Saqib";
  String nam2 = "Wasim";
  // greet("wasim");
  // greet(nam1);
  // greet("Talha");
  // greet("Zainab");
  // greet("Danish");

  tableOf(12, 20);

  // double matricPercentage = getPercentage(1001, 1200);
  // double fscPercentage = getPercentage(661, 1200);
  // print(matricPercentage);
  // print(fscPercentage);

  // bool passOrFail = getPercentage(100, 1200);
  String passOrFail = getPercentage(1100, 1200);
  print(passOrFail);
}

// Function Definition
void greet(String name) {
  print("Hello ${name}! have a great day");
}

void tableOf(int table, int count) {
  int index = 1;
  while (index <= count) {
    int multiply = table * index;
    // print("${table} X ${index} = ${multiply}");

    index++;
  }
}

// void simpleSum()
String getPercentage(double obtainedMarks, double? totalMarks) {
  bool isPass;
  String status;
  // totalMarks = 1100;
  double percentageValue = (obtainedMarks / totalMarks!) * 100;

  // if (percentageValue >= 50) {
  //   isPass = true;
  // } else {
  //   isPass = false;
  // }
  //? ternary operator (inline ifelse)
  percentageValue >= 50 ? status = "pass" : status = "fail";

  // return percentageValue;
  // return isPass;
  return status;
}
