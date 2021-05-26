import 'package:flutter/material.dart';
class TextForm extends StatelessWidget {
  String _textfield;
  var _ipIcon;
  TextForm(this._textfield,this._ipIcon);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.08,
      width: MediaQuery.of(context).size.width*0.9,
      margin: EdgeInsets.only(left:10.0,right: 10.0,bottom: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(_ipIcon),
          labelText: _textfield,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0)
          )
        ),
        keyboardType: TextInputType.emailAddress,
      )
        );
  }
}
