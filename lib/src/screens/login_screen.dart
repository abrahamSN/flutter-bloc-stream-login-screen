import 'package:flutter/material.dart';

import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passField(),
          loginBtn(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'your@email.com',
        labelText: 'Email address',
      ),
      onChanged: (val) {},
    );
  }

  Widget passField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'password',
        labelText: 'Password',
      ),
      onChanged: (val) {},
    );
  }

  Widget loginBtn() {
    return RaisedButton(
      textColor: Colors.white,
      child: Text('login'),
      color: Colors.blue,
      onPressed: () {},
    );
  }
}
