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
        if (val.length >= 6) {
          sink.add(val);
        } else {
          int char = 6 - val.length;
          sink.addError('Kurang $char karakter lagi');
        }
      }
  );
}