import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _email = BehaviorSubject<String>();
  final _pass = BehaviorSubject<String>();

  // retrieve data from stream
  Stream<String> get email => _email.stream.transform(validateEmail);

  Stream<String> get pass => _pass.stream.transform(validatePass);

  Stream<bool> get btn =>
      Observable.combineLatest2(email, pass, (e, p) => true);

  // add data into stream
  Function(String) get changeEmail => _email.sink.add;

  Function(String) get changePass => _pass.sink.add;

  submit() {
    final validEmail = _email.value;
    final validPass = _pass.value;

    print('email is $validEmail');
  }

  dispose() {
    _email.close();
    _pass.close();
  }
}
