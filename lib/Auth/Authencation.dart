import 'dart:async';

class AuthStream {
  final StreamController<bool> _controller = StreamController<bool>();
  bool _isLoggedIn = false;

  AuthStream() {
    _controller.add(_isLoggedIn);
  }

  Stream<bool> get loginStatus => _controller.stream;

  void changeLoginStatus() {
    _isLoggedIn = !_isLoggedIn;
    _controller.add(_isLoggedIn);
    print('Login status changed: $_isLoggedIn');
  }

  void dispose() {
    _controller.close();
  }
}
