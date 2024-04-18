import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renthome/screens/signup_user.dart';
import 'home.dart';
import 'login_user.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001118),
      body: SizedBox(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/img.png')),
            Positioned(
              top: 163,
              left: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rent a House ',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        //     shadows:[
                        //   Shadow(
                        //     offset: Offset(10.0, 10.0),
                        //     blurRadius: 3.0,
                        //     color: Color.fromARGB(255, 0, 0, 0),
                        //   ),
                        //   Shadow(
                        //     offset: Offset(10.0, 10.0),
                        //     blurRadius: 8.0,
                        //     color: Color.fromARGB(125, 0, 0, 255),
                        //   ),
                        // ] ,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                  Text(
                    'for you.',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100))),
              ),
            ),
            Positioned(
              bottom: 60,
              left: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 237,
                    height: 61,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        backgroundColor: Color(0xff0D1F23),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpUser()));
                      },
                      child: Text(
                        'REGISTER NOW',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
