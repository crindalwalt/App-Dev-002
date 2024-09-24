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
}

// Function Definition
void greet(String name) {
  print("Hello ${name}! have a great day");
}

void tableOf(int table, int count) {
  int index = 1;
  while (index <= count) {
    int multiply = table * index;
    print("${table} X ${index} = ${multiply}");

    index++;
  }
}

// void simpleSum()
