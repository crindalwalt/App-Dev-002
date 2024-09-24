void main() {
  List<String> friends = ["Ali Imran", "Asad Farooq"];
  List<int> marks = [12, 10, 34, 45, 65];
  print(friends[1]);
  print(marks[1]);
  List<String> pakistaniNames = [
    "Abdul Ahad",
    "Abdul Azeem",
    "Abdul Basit",
    "Abdul Hadi",
    "Abdul Jabbar",
    "Abdul Kareem",
    "Abdul Mannan",
    "Abdul Qadir",
    "Abdul Rauf",
    "Abdul Samad",
    "Abdur Rahman",
    "Ahmad Khan",
    "Akbar Ali",
    "Ali Asghar",
    "Ali Raza",
    "Amir Hussain",
    "Arif Mahmood",
    "Asadullah",
    "Atif Ali",
    "Awais Khan",
    "Bilal Ahmed",
    "Babar Iqbal",
    "Danish Ali",
    "Ehsan Ullah",
    "Fahad Ali",
    "Farhan Qureshi",
    "Fazal Karim",
    "Ghulam Abbas",
    "Ghulam Farid",
    "Hafiz Saeed",
    "Hamza Khan",
    "Hassan Naqvi",
    "Hashim Raza",
    "Hidayat Ullah",
    "Hussain Shah",
    "Iftikhar Ahmed",
    "Irfan Ali",
    "Imran Khan",
    "Iqbal Hussain",
    "Jameel Khan",
    "Javed Iqbal",
    "Kashif Ali",
    "Khalid Mehmood",
    "Khurram Shahzad",
    "Majid Ali",
    "Mansoor Ahmed",
    "Mohammad Ashraf",
    "Mohammad Iqbal",
    "Mohammad Saleem",
    "Mohammad Usman",
    "Muneer Ahmed",
    "Nadeem Akhtar",
    "Naeem Ullah",
    "Nasir Abbas",
    "Nawaz Sharif",
    "Noman Khan",
    "Osama Ali",
    "Qasim Shah",
    "Rashid Minhas",
    "Rauf Siddiqui",
    "Rehan Ali",
    "Sajid Iqbal",
    "Salman Ahmed",
    "Samiullah Khan",
    "Shahid Ali",
    "Shafqat Hussain",
    "Shakeel Ahmed",
    "Sharjeel Khan",
    "Shoaib Akhtar",
    "Sikandar Ali",
    "Sohail Khan",
    "Syed Ali",
    "Syed Hussain",
    "Tahir Abbas",
    "Talha Ali",
    "Tanveer Ahmed",
    "Ubaid Ullah",
    "Usman Ghani",
    "Waqar Ali",
    "Waseem Ahmed",
    "Yasir Hussain",
    "Zafar Abbas",
    "Zahid Khan",
    "Zain Ali",
    "Zeeshan Ahmed",
    "Adnan Ahmed",
    "Adeel Khan",
    "Aamir Raza",
    "Asif Mehmood",
    "Bashir Ahmed",
    "Faisal Khan",
    "Ghulam Murtaza",
    "Hamid Ali",
    "Imtiaz Ahmed",
    "Junaid Khan",
    "Kashan Ali",
    "Moazzam Khan",
    "Naveed Iqbal",
    "Raheel Khan",
    "Saad Ahmed",
    "Zulfiqar Ali"
  ];

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
