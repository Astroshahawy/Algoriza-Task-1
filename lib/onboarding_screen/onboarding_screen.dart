import 'package:flutter/material.dart';
import 'package:task_1/register_screen/register_screen.dart';
import 'package:task_1/shared/constants.dart';
import 'package:task_1/shared/custom_text_button.dart';
import 'package:task_1/onboarding_screen/onboarding_page_view.dart';
import 'package:task_1/onboarding_screen/skip_button.dart';
import 'package:task_1/sign_in_screen/sign_in_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top * 1.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              SkipButton(),
            ],
          ),
          SizedBox(height: deviceHeight * 0.02),
          SizedBox(
            height: deviceHeight * 0.65,
            child: const OnboardingPageView(),
          ),
          SizedBox(height: deviceHeight * 0.03),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: deviceHeight * 0.08,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SignInScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: kTealColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
          SizedBox(height: deviceHeight * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account?',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(width: 5),
              CustomTextButton(
                title: 'Sign Up',
                isBlueColor: false,
                isNormalFont: false,
                fontSize: 17,
                fontWeight: FontWeight.bold,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const RegisterScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
