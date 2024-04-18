import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renthome/screens/settings.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings()));
              },
              icon: Icon(Icons.arrow_back_rounded)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Text(
                'Privacy Settings',
                style: GoogleFonts.raleway(
                  textStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Change Password',
                    hintStyle: GoogleFonts.poppins(
                textStyle:
                TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),
              ),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_drop_down_sharp)),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: .2, color: Colors.black))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Current Password',
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: .1, color: Colors.white54))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'New Password',
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: .1, color: Colors.white54))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Confirm Password',
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: .1, color: Colors.white54))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff04242F), Color(0xff0A8ED9)])),
                child: MaterialButton(
                    height: 53,
                    minWidth: 170,
                    onPressed: () {
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (context) => pypthree()));
                    },
                    child: Text('NEXT',
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ))),
              ),
            )
          ]),
        ));
  }
}
