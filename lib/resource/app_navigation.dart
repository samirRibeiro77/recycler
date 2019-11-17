import 'package:flutter/material.dart';
import 'package:recycler/ui/screen/login_screen.dart';

class AppNavigation {
  void loginScreen() {
    MaterialPageRoute(builder: (contex)=>LoginScreen());
  }

  void signupScreen() {
    MaterialPageRoute(builder: (contex)=>LoginScreen());
  }
}