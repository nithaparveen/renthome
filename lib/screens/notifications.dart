import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notificationn extends StatefulWidget {
  const Notificationn({super.key});

  @override
  State<Notificationn> createState() => _NotificationnState();
}

class _NotificationnState extends State<Notificationn> {
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

    var date = [
      'March 2023',
      'January 2023',
      'November 2022',
      'April 2022',
      'March 2023',
      'January 2023',
      'November 2022',
      'April 2022',
      'March 2023',      'March 2023',

    ];
    var text1 = [
      'Great news! Your house booking has been confirmed. Get ready for an amazing experience!',
      'How was your experience with RenHome? Wed love to hear your thoughts. Share your feedback and help us improve!',
      'Dont miss out! Exclusive offer: Book a room now and enjoy 45% off. Limited time only!',
          'Great news! Your house booking has been confirmed. Get ready for an amazing experience!',
      'Important: Weather update for your event. Please check for any advisories or changes to your plans.',
          'Great news! Your house booking has been confirmed. Get ready for an amazing experience!',
      'How was your experience with RenHome? Wed love to hear your thoughts. Share your feedback and help us improve!',
      'Dont miss out! Exclusive offer: Book a room now and enjoy 45% off. Limited time only!',
          'Great news! Your house booking has been confirmed. Get ready for an amazing experience!',
      'Important: Weather update for your event. Please check for any advisories or changes to your plans.'
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
        body: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
      children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(
              child: Text(
                'NOTIFICATIONS',
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
            child: ListView.separated(
                itemBuilder: (context, index) => ListTile(
                    title: Text(text1[index],
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ),
                    trailing:
                        IconButton(style: ButtonStyle(iconColor:MaterialStateProperty.all(Color(0xff04242F)),),onPressed: () {}, icon: Icon(Icons.close))),
                separatorBuilder:(context, index) => Text(
                  date[index],
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(fontSize: 13),
                  ),
                ),
                itemCount: text1.length),
          )
      ],
    ),
        ));
  }
}
