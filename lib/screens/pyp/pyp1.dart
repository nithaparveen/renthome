import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renthome/screens/home.dart';
import 'package:renthome/screens/pyp/pyp2.dart';

class pypone extends StatefulWidget {
  const pypone({super.key});

  @override
  State<pypone> createState() => _pyponeState();
}

class _pyponeState extends State<pypone> {
  int selectedCategory1Index = -1;
  int selectedCategory2Index = -1;
  int selectedCategory3Index = -1;
  var category1 = ['Sell', 'Rent/Lease', 'PG'];
  var category2 = ['Residential', 'Commercial'];
  var category3 = [
    'House',
    'Apartment',
    'Hotel',
    'Villa',
    "Cottage",
    'Plot/Land',
    'Studio Apartment',
    'Farmhouse',
    'Other'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            icon: Icon(Icons.arrow_back_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'POST YOUR PROPERTY',
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
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: Text(
                'Looking to',
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: category1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory1Index = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: selectedCategory1Index == index
                              ? const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                      Color(0xff04242F),
                                      Color(0xff0A8ED9)
                                    ])
                              : null,
                          color: selectedCategory1Index == index
                              ? null
                              : CupertinoColors.systemGrey6,
                        ),
                        child: Center(
                          child: Text(
                            category1[index],
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: selectedCategory1Index == index
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
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: Text(
                'Kind of Property',
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: category2.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory2Index = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: selectedCategory2Index == index
                              ? const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                      Color(0xff04242F),
                                      Color(0xff0A8ED9)
                                    ])
                              : null,
                          color: selectedCategory2Index == index
                              ? null
                              : CupertinoColors.systemGrey6,
                        ),
                        child: Center(
                          child: Text(
                            category2[index],
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: selectedCategory2Index == index
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
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: Text(
                'Type of Property',
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Wrap(
                spacing: 2,
                runSpacing: 3,
                children: List.generate(category3.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory3Index = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 110,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: selectedCategory3Index == index
                              ? const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                      Color(0xff04242F),
                                      Color(0xff0A8ED9)
                                    ])
                              : null,
                          color: selectedCategory3Index == index
                              ? null
                              : CupertinoColors.systemGrey6,
                        ),
                        child: Center(
                          child: Text(
                            category3[index],
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: selectedCategory3Index == index
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Contact Details',
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 8),
              child: Text(
                'Phone number/Email',
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => pyptwo()));
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
          ],
        ),
      ),
    );
  }
}
