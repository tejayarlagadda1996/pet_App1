import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/view/LoginHomePage.dart';
import 'package:pet_app/global_widgets/round_button.dart';

class WelcomeHomePage extends StatefulWidget {
  const WelcomeHomePage({super.key});

  @override
  State<WelcomeHomePage> createState() => _WelcomeHomePageState();
}

class _WelcomeHomePageState extends State<WelcomeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          // STACK to add background image
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/welcome_pawprints.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Header Image
                  Image.asset('assets/welcome_header.png'),
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        const Text(
                          "Welcome to",
                          style: TextStyle(
                            color: Color.fromARGB(255, 30, 33, 68),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (bounds) {
                            return const LinearGradient(
                              colors: <Color>[
                                Color.fromRGBO(237, 109, 78, 1),
                                Color.fromRGBO(241, 168, 82, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(
                              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                            );
                          },
                          child: const Text(
                            "Pet Saviour",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // Subtext
                        const Text(
                          "Discover all your pet's needs in one place! Our app connects pet owners with a range of essential services for their furry companions.",
                          style: TextStyle(
                            color: Color.fromRGBO(93, 115, 126, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: RoundButton(
                            roundButtonText: "Log In / Sign Up",
                            onPressed: () {
                              Get.to(const LoginHomePage(showSignIn: true));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Get.to(const LoginHomePage(showSignIn: true));
                              }, // add functionality
                              child: const Text(
                                "Explore as a Guest",
                                style: TextStyle(
                                  color: Color.fromRGBO(237, 109, 78, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
