import 'package:flutter/material.dart';
import 'package:recycler/resource/string_resource.dart';
import 'package:recycler/ui/screen/signup_screen.dart';
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
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
                  child: Text(Strings.instance.forgotPassword())
              ),
            ),
            RaisedButton(
              color: Colors.green,
              onPressed: () {
                MaterialPageRoute(builder: (contex)=>LoginScreen());
              },
              child: Text(Strings.instance.login()),
            ),
            FlatButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (contex)=>SignupScreen())
                  );
                },
                child: Text(Strings.instance.signup())
            )
          ],
        ),
      ),
    );
  }
}
