import 'package:flutter/material.dart';
import 'package:recycler/ui/screen/login_screen.dart';
import 'package:recycler/resource/string_resource.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.instance.appName,
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green
      ),
      home: LoginScreen(),
    );
  }
}