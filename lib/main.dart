import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:renthome/screens/contact.dart';
import 'package:renthome/screens/detailpage.dart';
import 'package:renthome/screens/ex.dart';
import 'package:renthome/screens/firstpage.dart';
import 'package:renthome/screens/help.dart';
import 'package:renthome/screens/home.dart';
import 'package:renthome/screens/introscreens/intro1.dart';
import 'package:renthome/screens/login_user.dart';
import 'package:renthome/screens/logout.dart';
import 'package:renthome/screens/notifications.dart';
import 'package:renthome/screens/privacyy.dart';
import 'package:renthome/screens/profile.dart';
import 'package:renthome/screens/pyp/pyp1.dart';
import 'package:renthome/screens/pyp/pyp2.dart';
import 'package:renthome/screens/pyp/pyp3.dart';
import 'package:renthome/screens/settings.dart';
import 'package:renthome/screens/shortlisted.dart';
import 'package:renthome/screens/signup_user.dart';
import 'package:renthome/screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyC8_sSvrfGRPYj0GwCfgYPmMEg4AMx4-O0",
          appId: "1:105371146481:android:51bef6fc15bd26777b3150",
          messagingSenderId: "",
          projectId: "renthomeee"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:SignUpUser(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/Home': (context) => Home(),
        '/Profile': (context) => Profile(),
        '/Shortlisted': (context) => Shortlisted(),
        '/Notification': (context) => Notificationn(),
        '/Settings': (context) => Settings(),
        '/Help': (context) => Help(),
        '/Logout': (context) => Logout(),
      },
    );
  }
}
