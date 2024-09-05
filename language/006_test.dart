// two integer sum


String sum (int num1,int num2,int num3){
  int result = num1 + num2 + num3;
  // print("The result is " + result.toString());
  return "hello dear brother";
}

// create table out of integer

void table(int table){
  // 5 * 1 = 5
  int index = 1;
  while(index <= 10){
    int multiply = table * index;
    // print(table.toString() + " * " + index.toString() + " = " + multiply.toString());
    print("${ table } X ${index} = ${multiply}");
    index++;
  }
}
// check even or odd

bool checkEvenOrOdd (int number){
  bool check = number % 2 == 0;
  String isEven = check ? "Even" : "Odd"; // ternary operator
  // print("${number} is ${isEven}");
  return check;

}




void main (){
  // sum(3,4,5);
  // table(8);
  // checkEvenOrOdd(9);

  String result  = sum(12,34,56);
  print("${result}");

  bool isEvenOdd = checkEvenOrOdd(45);
  if(isEvenOdd){
    print("even");

  }else{
    print("odd");
  }
}