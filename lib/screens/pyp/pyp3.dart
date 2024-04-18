import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renthome/screens/pyp/pyp2.dart';

class pypthree extends StatefulWidget {
  const pypthree({super.key});

  @override
  State<pypthree> createState() => _pypthreeState();
}

class _pypthreeState extends State<pypthree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => pyptwo()));
            },
            icon: Icon(Icons.arrow_back_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'PHOTOS AND PRICING DETAILS',
                style: GoogleFonts.raleway(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Property Photos',
                style: GoogleFonts.raleway(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Container(
                  height: 101,
                  width: 370,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .8),
                    borderRadius: BorderRadius.circular(6),
                    // color: Colors.amber,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Container(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.file_upload_outlined))),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt_outlined)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Name of Property',
                style: GoogleFonts.raleway(
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
                    hintText: 'Name',
                    hintStyle: GoogleFonts.raleway(
                      textStyle:
                          TextStyle(fontSize: 13),
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: .1, color: Colors.white54))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Description',
                style: GoogleFonts.raleway(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 10),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Share some details...',
                  hintStyle: GoogleFonts.raleway(
                    textStyle:
                    TextStyle(fontSize: 13),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: .1, color: Colors.white54),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(12, 75, 12, 8),
                  // Adjust these values as needed
                  alignLabelWithHint: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Pricing Details',
                style: GoogleFonts.raleway(
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
                    hintText: 'Expected Price / Year',
                    hintStyle: GoogleFonts.raleway(
                      textStyle:
                      TextStyle(fontSize: 13),
                    ),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => pypthree()));
                    },
                    child: Text('FINISH',
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
