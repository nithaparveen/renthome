import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
    double screenWidth = MediaQuery.of(context).size.width;
    final devHeight = MediaQuery.of(context).size.height;
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
                   width: screenWidth*.1,
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
      body: Column(children: [
        Stack(children: [
          Container(),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(radius: 50, backgroundColor: Colors.red),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SURAJ AGRAWAL',
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            fontSize: 17.1, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'Phone',
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(fontSize: 16),
                      ),
                    ),
                    Text(
                      '(+91) 916239676',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(fontSize: 12),
                      ),
                    ),
                    Text(
                      'Email',
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(fontSize: 16),
                      ),
                    ),
                    Text(
                      'Suraj_Prawal@home.com',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 62, top: 155),
            child: Text(
              'Edit Profile',
              style: GoogleFonts.raleway(
                textStyle:
                    TextStyle(fontSize: 17.1, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 195),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 300.0),
                  child: Text(
                    "Name",
                    style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: TextField(maxLength: (screenWidth*8).floor(),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: .1, color: Colors.white54))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300.0),
                  child: Text(
                    "Email",
                    style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: .1, color: Colors.white54))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300.0),
                  child: Text(
                    "Phone",
                    style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: .1, color: Colors.white54))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200.0, left: 28),
                  child: Row(
                    children: [
                      Text(
                        "Date of",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        "Birth",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: .1, color: Colors.white54))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200.0, left: 28),
                  child: Row(
                    children: [
                      Text(
                        "Country",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        "/Region",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: .1, color: Colors.white54))),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff04242F), Color(0xff0A8ED9)])),
                    child: MaterialButton(
                      height: 53,minWidth: 170,
                        onPressed: () {}, child: Text('Save Changes',style: GoogleFonts.raleway(
                    textStyle: TextStyle(color: Colors.white,
                    fontSize: 16, fontWeight: FontWeight.w500),))),)
              ],
            ),
          )
        ]),
      ]),
    );
  }
}
