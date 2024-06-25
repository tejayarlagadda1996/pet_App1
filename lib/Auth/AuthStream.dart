import 'dart:async';

class AuthStream{
  final isloggedincontroller = StreamController<bool>.broadcast();
  Stream<bool> get isloggedinstream => isloggedincontroller.stream;

  void Loggedin(){
    isloggedincontroller.sink.add(true);
  }

  void Loggedout(){
    isloggedincontroller.sink.add(false);
  }

  void dispose(){
    isloggedincontroller.close();
  }
}
final authstream = AuthStream();