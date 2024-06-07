import 'package:flutter/material.dart';
import 'package:pet_app/Login/view/Signin_widget.dart';
import 'package:pet_app/Login/Signup/view/Signup_widget.dart';

class Login extends StatefulWidget {
  final bool showSignIn;
  const Login({super.key, required this.showSignIn});

  @override
  State<Login> createState() => _LoginState();
}
 

class _LoginState extends State<Login> {
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
            showSignIn ? const SignInWidget() : const Signupwidget(),
            
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
