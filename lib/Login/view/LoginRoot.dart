import 'package:flutter/material.dart';
import 'package:pet_app/Login/view/SignInWidget.dart';
import 'package:pet_app/Login/view/Signupwidget.dart';

class LoginRoot extends StatefulWidget {
  final bool showSignIn;
  const LoginRoot({super.key, required this.showSignIn});

  @override
  State<LoginRoot> createState() => _LoginRootState();
}
 

class _LoginRootState extends State<LoginRoot> {
  late bool showSignIn;
 
  @override
  void initState() {
    super.initState();
    showSignIn = widget.showSignIn;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/signinimage.png',
              width: MediaQuery.of(context).size.width,
            ),
            showSignIn ? SignInWidget() : const Signupwidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    showSignIn ? 'Don\'t have an account? ' : 'Already have an account? ',
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showSignIn = !showSignIn;
                      });
                    },
                    child: Text(showSignIn ? 'Sign Up' : 'Sign In'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
