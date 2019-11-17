import 'package:flutter/material.dart';
import 'package:recycler/resource/string_resource.dart';
import 'package:recycler/ui/widget/text_composer.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _wrongPassword = false;

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
              Strings.instance.email(),
              TextInputType.emailAddress,
              true),
          TextComposer(
              null,
              Strings.instance.password(),
              TextInputType.visiblePassword,
              true),
          Visibility(
            visible: _wrongPassword,
            child: FlatButton(
                onPressed: (){},
                child: Text(Strings.instance.forgotPassword())),
          ),
          RaisedButton(
            onPressed: (){},
            child: Text(Strings.instance.login()),
          )
        ],
      ),
    );
  }
}
