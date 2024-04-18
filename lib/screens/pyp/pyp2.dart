import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renthome/screens/pyp/pyp1.dart';
import 'package:renthome/screens/pyp/pyp3.dart';

class pyptwo extends StatefulWidget {
  const pyptwo({super.key});

  @override
  State<pyptwo> createState() => _pyptwoState();
}

class _pyptwoState extends State<pyptwo> {
  int selectedbedIndex = -1;
  int selectedbathIndex = -1;
  int selectedfurnishIndex = -1;
  int selectedavailableIndex = -1;

  var bed = ['1', '2', '3', '4', '5'];
  var bath = ['1', '2', '3', '4', '5'];
  var furnish = ['Unfurnished', 'Furnished', 'Semi-Furnished'];
  var available = ['Ready to Move', 'Under Construction'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => pypone()));
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
                'BASIC PROPERTY DETAILS',
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
                'Location',
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
                    hintText: 'City',
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
                'Room Details',
                style: GoogleFonts.raleway(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'No. of Bedrooms',
                style: GoogleFonts.raleway(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: bed.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedbedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: selectedbedIndex == index
                              ? const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                      Color(0xff04242F),
                                      Color(0xff0A8ED9)
                                    ])
                              : null,
                          color: selectedbedIndex == index
                              ? null
                              : CupertinoColors.systemGrey6,
                        ),
                        child: Center(
                          child: Text(
                            bed[index],
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: selectedbedIndex == index
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'No. of Bathrooms',
                style: GoogleFonts.raleway(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: bath.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedbathIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: selectedbathIndex == index
                              ? const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff04242F),
                                Color(0xff0A8ED9)
                              ])
                              : null,
                          color: selectedbathIndex == index
                              ? null
                              : CupertinoColors.systemGrey6,
                        ),
                        child: Center(
                          child: Text(
                            bath[index],
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: selectedbathIndex == index
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Area Details',
                style: GoogleFonts.raleway(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Carpet Area',
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
                'Furnishing Details',
                style: GoogleFonts.raleway(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: furnish.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedfurnishIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: selectedfurnishIndex == index
                              ? const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff04242F),
                                Color(0xff0A8ED9)
                              ])
                              : null,
                          color: selectedfurnishIndex == index
                              ? null
                              : CupertinoColors.systemGrey6,
                        ),
                        child: Center(
                          child: Text(
                            furnish[index],
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: selectedfurnishIndex == index
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Floor Details',
                style: GoogleFonts.raleway(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'No. of Floors',
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
                'Availability',
                style: GoogleFonts.raleway(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: available.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedavailableIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: selectedavailableIndex == index
                              ? const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff04242F),
                                Color(0xff0A8ED9)
                              ])
                              : null,
                          color: selectedavailableIndex == index
                              ? null
                              : CupertinoColors.systemGrey6,
                        ),
                        child: Center(
                          child: Text(
                            available[index],
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: selectedavailableIndex == index
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff04242F), Color(0xff0A8ED9)])),
                child: MaterialButton(
                    height: 53,minWidth: 170,
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => pypthree()));
                    }, child: Text('NEXT',style: GoogleFonts.raleway(
                  textStyle: TextStyle(color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.w500),))),),
            )
          ],
        ),
      ),
    );
  }
}
