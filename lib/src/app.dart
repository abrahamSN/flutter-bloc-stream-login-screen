import 'package:flutter/material.dart';

import 'blocs/provider.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Log me in!',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Login boy'),
          ),
          body: LoginScreen(),
        ),
      ),
    );
  }
}
