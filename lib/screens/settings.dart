import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int selectedMenuIndex = -1;
  final List<Map<String, dynamic>> menu = [
    {
      'icon': Icon(CupertinoIcons.home),
      'text': 'Home',
    },
    {'icon': Icon(CupertinoIcons.person), 'text': 'Profile'},
    {
      'icon': Icon(CupertinoIcons.bookmark),
      'text': 'Shortlisted',
    },
    {
      'icon': Icon(Icons.notifications_outlined),
      'text': 'Notificaton',
    },
    {
      'icon': Icon(CupertinoIcons.settings),
      'text': 'Settings',
    },
    {'icon': Icon(Icons.help_outline_outlined), 'text': 'Help'},
    {'icon': Icon(CupertinoIcons.power), 'text': 'Logout'},
  ];
  @override
  Widget build(BuildContext context) {
    var text = ['Notifications', 'Privacy', 'Dark Mode', 'Delete Account'];
    var widget = [
      Switch(value: false, onChanged: (value) {},),
      Icon(Icons.arrow_forward_ios),
      Switch(value: false, onChanged: (value) {},),
      SizedBox()
    ];
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xff001720),
        child: ListView.builder(
          itemCount: menu.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedMenuIndex = index;
                  switch (index) {
                    case 0:
                      Navigator.pushNamed(context, '/Home');
                      break;
                    case 1:
                      Navigator.pushNamed(context, '/Profile');
                      break;
                    case 2:
                      Navigator.pushNamed(context, '/Shortlisted');
                      break;
                    case 3:
                      Navigator.pushNamed(context, '/Notification');
                      break;
                    case 4:
                      Navigator.pushNamed(context, '/Settings');
                      break;
                    case 5:
                      Navigator.pushNamed(context, '/Help');
                      break;
                    case 6:
                      Navigator.pushNamed(context, '/Logout');
                      break;
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // width: screenWidth*.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: selectedMenuIndex == index ? Colors.white : null),
                  child: ListTile(
                    // leading: Icon(
                    //   menu[index]['icon'],
                    //   color: selectedMenuIndex == index
                    //       ? Colors.grey
                    //       : Colors.white,
                    // ),
                    title: Text(
                      menu[index]['text'],
                      style: TextStyle(
                        fontSize: 16,
                        color: selectedMenuIndex == index
                            ? Colors.grey
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(
              child: Text(
                'SETTINGS',
                style: GoogleFonts.raleway(
                  textStyle:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      ListTile(
                        title: Text(
                          text[index],
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 16.5, fontWeight: FontWeight.w500),
                          ),
                        ),
                        trailing:widget[index],
                      ),
                  separatorBuilder: (context, index) =>
                      Divider(
                        thickness: 1,
                      ),
                  itemCount: 4))
        ],
      ),
    );
  }
}
