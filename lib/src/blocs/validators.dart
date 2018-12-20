import 'dart:async';

class Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (val, sink) {
        if (val.contains('@')) {
          sink.add(val);
        } else {
          sink.addError('Enter a valid email!');
        }
      }
  );

  final validatePass = StreamTransformer<String, String>.fromHandlers(
      handleData: (val, sink) {
        if (val.length > 3) {
          sink.add(val);
        } else {
          sink.addError('Password must be at least 4 characters');
        }
      }
  );
}