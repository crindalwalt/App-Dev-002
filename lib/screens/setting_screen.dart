import 'package:flutter/material.dart';
import 'package:flutter_basic_training/utils/theme/theme_manager.dart';

class SettingScreen extends StatefulWidget {
  ThemeManager themeController;
  SettingScreen({
    super.key,
    required this.themeController,
  });
  // ThemeManager themeManager = ThemeManager();
  @override
  State<SettingScreen> createState() {
    return _SettingScreenState();
  }
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitched = false;
  // bool isDarkMode = widget.themeManager.themeMode == ThemeMode.dark;
  TextStyle boldHeadings = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  String string_text = "Setting";
  // string_text =
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.chevron_left)),
          title: Text(
            string_text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
          // color: Colors.amber,
          child: ListView(
            children: [
              Text(
                "General",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 196, 196, 196),
                    borderRadius: BorderRadius.circular(10)),
                // height: 300,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Default Currency",
                            style: boldHeadings,
                          ),
                          Row(
                            children: [
                              Text("Dollar"),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Country",
                            style: boldHeadings,
                          ),
                          Row(
                            children: [
                              Text("Dollar"),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Container(
                      // color: Colors.red,
                      // color: Colors.red,
                      padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Language",
                            style: boldHeadings,
                          ),
                          Row(
                            children: [
                              Text("Dollar"),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "General",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 196, 196, 196),
                    borderRadius: BorderRadius.circular(10)),
                // height: 300,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Notification",
                            style: boldHeadings,
                          ),
                          Row(
                            children: [Icon(Icons.chevron_right)],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recieving Gifts",
                            style: boldHeadings,
                          ),
                          Row(
                            children: [Icon(Icons.chevron_right)],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Container(
                      // color: Colors.red,
                      // color: Colors.red,
                      padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dark Mode",
                            style: boldHeadings,
                          ),
                          Row(
                            children: [
                              Switch(
                                value: widget.themeController.themeMode ==
                                    ThemeMode.dark,
                                onChanged: (newVal) {
                                  widget.themeController.turnDarkModeOn(newVal);
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 196, 196, 196),
                    borderRadius: BorderRadius.circular(10)),
                // height: 300,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rate App",
                            style: boldHeadings,
                          ),
                          Row(
                            children: [Icon(Icons.chevron_right)],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Container(
                      // color: Colors.red,
                      // color: Colors.red,
                      padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "App Version",
                            style: boldHeadings,
                          ),
                          Row(children: [Text("1.12.40")]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
