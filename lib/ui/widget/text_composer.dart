import 'package:flutter/material.dart';
import 'package:recycler/resource/string_resource.dart';

class TextComposer extends StatefulWidget {
  final TextEditingController _textController;
  final String _hint;
  final TextInputType _textType;
  final bool _required;

  TextComposer(this._textController, this._hint, this._textType, this._required);

  @override
  _TextComposerState createState() =>
      _TextComposerState(_textController, _hint, _textType, _required);
}

class _TextComposerState extends State<TextComposer> {
  final TextEditingController _textController;
  final String _hint;
  final TextInputType _textType;
  final bool _required;

  _TextComposerState(this._textController, this._hint, this._textType, this._required);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: TextFormField(
        controller: _textController,
        keyboardType: _textType,
        style: TextStyle(fontSize: 20.0),
        obscureText: _textType == TextInputType.visiblePassword,
        validator: (text){
          if(_required && text.isEmpty)
            return Strings.instance.fieldEmpty();
        },
        decoration: InputDecoration.collapsed(
            hintText: _hint),
      ),
    );
  }
}
