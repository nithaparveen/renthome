import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../firstpage.dart';

class Intro3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001118),
      body: Stack(
        children: [
          Container(
            height: 542,
            width: 427,
            child: Image.asset(
              'assets/image/download.jpeg',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 570, left: 71),
            child: Text(
              "Let's Get Started",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 630, left: 27, right: 27),
            child: Text(
              'Receive your updates , find your dream home and get started today !',
              style: GoogleFonts.reemKufi(
                textStyle: TextStyle(color: Colors.white, fontSize: 18),
              ),textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 27,bottom: 30),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => firstpage()));
                  },
                  child: Text(
                    'Next',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
