import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('LOGOUT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
    );
  }
}
