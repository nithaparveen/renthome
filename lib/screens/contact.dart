import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contactowner extends StatelessWidget {
  const Contactowner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Settings()));
              },
              icon: Icon(Icons.arrow_back_rounded)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Text(
                'Contact Owner',
                style: GoogleFonts.raleway(
                  textStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: CircleAvatar(
                        radius: 23,backgroundColor: Colors.amber,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 85),
                      child: Text("Garry Allen",style: GoogleFonts.raleway(
                        textStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 85,top: 25),
                      child: Text("Owner",style: GoogleFonts.raleway(
                        textStyle:TextStyle(fontSize: 13),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 85,top: 55),
                      child: Row(
                        children: [
                          Icon(Icons.call,size: 20,),
                          Text("(+91)916239676",style: GoogleFonts.inter(
                            textStyle:TextStyle(fontSize: 15),)),
                          SizedBox(width: 10,),
                          Icon(Icons.messenger_rounded,size: 20,),
                          Text("(+91)916239676",style: GoogleFonts.inter(
                            textStyle:TextStyle(fontSize: 15),)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Similar Projects",style: GoogleFonts.raleway(
                    textStyle:TextStyle(fontSize: 17),fontWeight: FontWeight.w600)),
                )
          ]),
        ));
  }
}
