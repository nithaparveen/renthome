import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renthome/screens/pyp/pyp1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedCategoryIndex = -1;
  var category = ['House', 'Apartment', 'Hotel', 'Villa', "Cottage"];
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
  var houses = [
    'assets/image/house1.png',
    'assets/image/house1.png',
    'assets/image/house1.png',
    'assets/image/house1.png'
  ];

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery.of(context) to access MediaQueryData anywhere in your app
    // MediaQueryData mediaQueryData = ;

    // Example of using MediaQueryData
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: IconButton(onPressed: () {
        //   }, icon: Icon(Icons.apps)),
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Post Property',
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(fontSize: 12.83),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>pypone()));
                  },
                  icon: Icon(Icons.add_home_work_outlined),
                ),
              ],
            ),
          )
        ],
      ),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 52,
                      width: 314,
                      decoration: BoxDecoration(
                        border: Border.all(color: CupertinoColors.systemGrey6),
                        color: CupertinoColors.systemGrey6,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search address or near you',
                          hintStyle: TextStyle(fontSize: 12.83),
                          contentPadding: EdgeInsets.symmetric(vertical: 25),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: CupertinoColors.systemGrey6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 51.31,
                    width: 51.31,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.69)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff04242F), Color(0xff0A8ED9)])),
                    child: Icon(
                      Icons.filter_list_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  itemCount: category.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: selectedCategoryIndex == index
                                ? const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Color(0xff04242F), Color(0xff0A8ED9)])
                                : null,
                            color: selectedCategoryIndex == index
                                ? null
                                : CupertinoColors.systemGrey6,
                          ),
                          child: Center(
                            child: Text(
                              category[index],
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: selectedCategoryIndex == index
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Near from you', style: TextStyle(fontSize: 17)),
                    Text('See more',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
              ),
              SizedBox(
                height: 297,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image.asset(houses[index], fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Best for you', style: TextStyle(fontSize: 17)),
                    Text('See more',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blueGrey,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
