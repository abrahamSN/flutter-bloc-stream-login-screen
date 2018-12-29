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
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: bloc.changeEmail,
          decoration: InputDecoration(
            hintText: 'your@email.com',
            labelText: 'Email address',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passField() {
    return StreamBuilder(
      stream: bloc.pass,
      builder: (context, snapshot) {
        return TextField(
          obscureText: true,
          onChanged: bloc.changePass,
          decoration: InputDecoration(
            hintText: 'password',
            labelText: 'Password',
            errorText: snapshot.error,
          ),
        );
      },
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
