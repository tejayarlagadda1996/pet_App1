import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/view/LoginRoot.dart';
import 'package:pet_app/Utils/RoundButton.dart';

class WelcomeRoot extends StatelessWidget {
  const WelcomeRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/welcome_pawprints.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Header Image
                  Image.asset(
                    'assets/welcome_header.png',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
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
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        // Made as a Global Button
                        RoundButton(
                          roundButtonText: "Log In / Sign Up",
                          onPressed: () {
                            Get.to(
                              () => const LoginRoot(showSignIn: true),
                              transition: Transition.downToUp,
                              curve: Curves.easeInOut,
                              duration: const Duration(seconds: 1),
                            );
                          },
                        ),
                        const SizedBox(height: 80)
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
