import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shortlisted extends StatefulWidget {
  const Shortlisted({super.key});

  @override
  State<Shortlisted> createState() => _ShortlistedState();
}

class _ShortlistedState extends State<Shortlisted> {
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
    var img = [
      'assets/images/h1.png',
      'assets/images/h2.png',
      'assets/images/h3.png',
      'assets/images/h4.png'
    ];
    var text1 = [
      'Orchad House',
      'The Hollies House',
      'Sea Breezes House',
      'Little Copse House'
    ];
    var text2 = [
      'Rp. 2.500.000.000 / Year',
      'Rp. 2.000.000.000 / Year',
      'Rp. 900.000.000 / Year',
      'Rp. 900.000.000 / Year'
    ];
    var text3 = ['6 Bedroom', '2 Bedroom', '3 Bedroom', '6 Bedroom'];
    var text4 = [
      '4 Bathroom',
      '2 Bathroom',
      '2 Bathroom',
      '2 Bathroom',
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
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Center(
            child: Text(
              'SHORTLISTED',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => ListTile(
                  leading: Container(
                    height: 75,
                    width: 77,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        image: DecorationImage(
                            image: AssetImage(img[index]), fit: BoxFit.fill)),
                  ),
                  title: Text(text1[index]),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text2[index]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(text3[index]),
                          SizedBox(
                            width: 35,
                          ),
                          Text(text4[index]),
                        ],
                      ),
                    ],
                  ))),
        )
      ],
    ));
  }
}
