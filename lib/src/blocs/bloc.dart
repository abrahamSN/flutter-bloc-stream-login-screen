import 'dart:async';
import 'validators.dart';

class Bloc extends Object with Validators {
  final _email = StreamController<String>();
  final _pass = StreamController<String>();

  // retrieve data from stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get pass => _pass.stream.transform(validatePass);

  // add data into stream
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePass => _pass.sink.add;

  dispose(){
    _email.close();
    _pass.close();
  }
}
