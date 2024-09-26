void main() {
  // Animal lion = Animal();
  // lion.roarSound();
  // lion.name = "Lion Khan";
  // lion.age = 34;
  // lion.introduce();

  // Animal wasim = Animal();
  // wasim.name = "Wasim Khan Chandia";
  // wasim.age = 1002;
  // wasim.introduce();
  // print(wasim.getAgeLeft(34));

  Greet hola = Greet("Shahzad", true);
}

class Greet {
  bool? isMale;
  String? name;
  // constructor
  Greet(String yourName, bool yourGender) {
    this.name = yourName;
    this.isMale = yourGender;
    print("Hello ${isMale! ? "Mr." : "Mrs"} ${name!} ! Have a wonderfull day");
  }
}




// class Animal {
//   // property (variable in class)
//   int? age;
//   String? name;

//   // method (function in class)
//   String? roarSound() {
//     return "Roar Roar";
//   }

//   void introduce() {
//     print("the Name of the Animal is ${name} and its age is ${age}");
//   }

//   double getAgeLeft(int? age) {
//     double totalAge = 80;
//     double avgAge = totalAge - age!;
//     return avgAge;
//   }
// }
