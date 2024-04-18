import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detailpage extends StatelessWidget {
  const detailpage({super.key});

  @override
  Widget build(BuildContext context) {
    var imgs = [
      "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSsRopsKQCD1ZaykAzzKApmwnL0QDXnn3ycewjSxqsqf6nmeekb",
      "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSWgBrDSaW31CgvlKN8cZ1IpIEGZeci2OAFQPVs0yBGH0PUv2aL",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWa6zpEY0d9OfKP4VTZZhqtvFpZKLP0er75g3Ra51KUTM_v1PP",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcSK-1J4oBybun8MqvId6rR2Xfo299BOWNYsCOoDvtTGgOGZLl",
      "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT2BhA1u_gaeGRKf9ms0--W-VOxlzwiW-5D4KUti4GhS6d345xG",
      "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSWgBrDSaW31CgvlKN8cZ1IpIEGZeci2OAFQPVs0yBGH0PUv2aL",
    ];
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 23, top: 22),
          child: Stack(
            children: [
              Container(
                // child: ClipRRect(child: im,
                // ),
                height: 322,
                width: 367,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcReT3huKmgVuPvK796IXm12SYV87jy6e2FZSEUnpS18WEK7O_PT')),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amberAccent),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                    backgroundColor: Colors.grey[400],
                    radius: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(color: Colors.white, Icons.arrow_back_ios),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300, top: 20),
                child: CircleAvatar(
                    backgroundColor: Colors.grey[400],
                    radius: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 13),
                      child: Icon(
                          color: Colors.white, Icons.bookmark_border_outlined),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 190, left: 23),
                child: Text(
                  'Dreamsville House',
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 230, left: 23),
                child: Text(
                  'Jl. Sultan Iskandar Muda, Jakarta selatan',
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 270, left: 23),
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Icon(color: Colors.white, Icons.bed),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 270, left: 20),
                    child: Text(
                      '6 Bedroom',
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 270, left: 23),
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Icon(color: Colors.white, Icons.bathtub_rounded),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 270, left: 20),
                    child: Text(
                      '4 Bathroom',
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23, top: 10),
          child: Text(
            'Description',
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23, top: 10, right: 23),
          child: Text(
            'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars. The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars. The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars.',
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23, top: 15),
          child: Text(
            'Gallery',
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                6,
                (index) => Card(
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Image.network(
                      imgs[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
