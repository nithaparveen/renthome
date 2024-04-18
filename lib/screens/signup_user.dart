import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../firebaseoptions/fire_functions.dart';
import 'login_user.dart';

class SignUpUser extends StatefulWidget {
  @override
  State<SignUpUser> createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {
  String? pwd;

  var email_controller = TextEditingController();
  var pass_controller = TextEditingController();
  var cpass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001118),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 260,
            decoration: const BoxDecoration(
                color: Color(0xff69818D),
                borderRadius:
                BorderRadius.only(bottomRight: Radius.circular(300))),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 23,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Back',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 16),
                  child: Text('Sign Up',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32),
                      )),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 590,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100))),
            ),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 360),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'Name',
                  style: GoogleFonts.ptSansCaption(
                    textStyle: TextStyle(
                        color: Color(0xff5A636A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 10, bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: const Color(0xffE7E4F4),
                    hintText: 'Type Here',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'Email',
                  style: GoogleFonts.ptSansCaption(
                    textStyle: TextStyle(
                        color: Color(0xff5A636A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 10, bottom: 10),
                child: TextFormField(
                  validator: (email) {
                    if (email!.isEmpty || !email.contains('@')) {
                      return ' invalid username or field is empty ';
                    }
                  },
                  controller: email_controller,
                  decoration: InputDecoration(
                    fillColor: const Color(0xffE7E4F4),
                    hintText: 'Type Here',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'Password',
                  style:GoogleFonts.ptSansCaption(
                    textStyle: TextStyle(
                        color: Color(0xff5A636A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 10, bottom: 10),
                child: TextFormField(
                  validator: (pass) {
                    pwd = pass;
                    if (pass!.isEmpty || pass.length < 6) {
                      return ' invalid password ';
                    }
                  },
                  controller: pass_controller,
                  decoration: InputDecoration(
                    fillColor: const Color(0xffE7E4F4),
                    hintText: 'Type Here',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'Confirm Password',
                  style:GoogleFonts.ptSansCaption(
                    textStyle: TextStyle(
                        color: Color(0xff5A636A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 10, bottom: 10),
                child: TextFormField(
                  validator: (confirmpassword){
                    if(confirmpassword!.isEmpty || confirmpassword != pwd ){
                      return 'Password is empty / mismatch';
                    }else{
                      return null;
                    }
                  },
                  controller: cpass_controller,
                  decoration: InputDecoration(
                    fillColor: const Color(0xffE7E4F4),
                    hintText: 'Type Here',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  width: 237,
                  height: 41,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      backgroundColor: Color(0xff0D1F23),
                    ),
                    onPressed: () {
                      String email = email_controller.text.trim();
                    String pass = pass_controller.text.trim();
                    FireBaseHelper()
                        .registerUser(email: email, pwd: pass)
                        .then((result) {
                      if (result == null) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginUser()));
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(result)));
                      }
                    });

                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account ?'),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginUser()));
                        },
                        child: Text(
                          ' Log In',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
