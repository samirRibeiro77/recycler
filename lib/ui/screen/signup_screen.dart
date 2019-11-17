import 'package:flutter/material.dart';
import 'package:recycler/resource/string_resource.dart';
import 'package:recycler/ui/widget/text_composer.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.instance.appName),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          TextComposer(
              null,
              Strings.instance.name(),
              TextInputType.emailAddress,
              true)
        ],
      ),
    );
  }
}