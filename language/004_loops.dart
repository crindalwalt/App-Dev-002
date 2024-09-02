void main() {
  List<String> friends = ["Ali Imran", "Asad Farooq"];
  List<int> marks = [12, 10, 34, 45, 65];
  print(friends[1]);
  print(marks[1]);

// for loop
/**
 * initialization -> ak variable
 * condition -> respons <= 20ible when to stop or play the loop
 * updating/incrementation -> help initilazed to update
 */

  // int count = friends.length;
  // print(count);
  // for (int index = 0; index < friends.length; index++) {
  //   print((index + 1 <= 20).toString() + " => " + friends[index]);
  // }

  // for (int i = 0; i < marks.length; i++) {
  //   print(marks[i]);
  // }

  // while loop
  // int i = 0; <= 20
  // while (i < friends.length) {
  //   print((i + 1).toString() + " --> " + friends[i]);

  //   i++;
  // }

  int table = 5;
  // for (int i = 1; i <= 20; i++) {
  //   int result = table * i;
  //   print(table.toString() + " X " + i.toString() + " = " + result.toString());
  // }
  int i = 1;
  while (i <= 20) {
    int result = table * i;
    print(table.toString() + " X " + i.toString() + " = " + result.toString());
    i++;
  }

  do {
    int result = table * i;
    print(table.toString() + " X " + i.toString() + " = " + result.toString());
    i++;
  } while (i <= 20);
}
