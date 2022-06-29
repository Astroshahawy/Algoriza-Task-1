import 'package:flutter/material.dart';
import 'package:task_1/register_screen/register_screen.dart';
import 'package:task_1/shared/constants.dart';
import 'package:task_1/shared/custom_text_button.dart';
import 'package:task_1/sign_in_screen/sign_in_screen.dart';

class SignInAndRegisterContents extends StatelessWidget {
  const SignInAndRegisterContents({
    Key? key,
    this.backButton = true,
    required this.label,
    required this.formFields,
    required this.buttonTitle,
    this.isRegister = false,
  }) : super(key: key);

  final bool backButton;
  final String label;
  final List<Widget> formFields;
  final String buttonTitle;
  final bool isRegister;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight:
                isRegister ? deviceHeight * 0.1 : deviceHeight * 0.3,
            floating: true,
            forceElevated: true,
            elevation: 0,
            leading: backButton
                ? GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey.shade800,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 18.0,
                      ),
                    ),
                  )
                : null,
            flexibleSpace: Image.asset(
              kAppBarBackground,
              fit: BoxFit.cover,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: deviceHeight * 0.02),
                      const Text(
                        'Welcome to Fashion Daily',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                        ),
                      ),
                      SizedBox(height: deviceHeight * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            label,
                            style: const TextStyle(
                                fontSize: 46.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                fontFamily: 'Times New Roman'),
                          ),
                          Row(
                            children: [
                              CustomTextButton(
                                onTap: () {},
                                title: 'Help',
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                              const SizedBox(width: 8.0),
                              const Icon(
                                Icons.help_rounded,
                                color: kBlueColor,
                                size: 26.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.04),
                      ...formFields,
                      SizedBox(height: deviceHeight * 0.02),
                      SizedBox(
                        width: double.infinity,
                        height: deviceHeight * 0.06,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: kBlueColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                          child: Text(
                            buttonTitle,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: deviceHeight * 0.03),
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'Or',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.03),
                      SizedBox(
                        width: double.infinity,
                        height: deviceHeight * 0.06,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              width: 2,
                              color: kBlueColor,
                            ),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                kGoogleLogo,
                                height: 20.0,
                              ),
                              const SizedBox(width: 20.0),
                              const Text(
                                'Sign with by google',
                                style: TextStyle(
                                  color: kBlueColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: deviceHeight * 0.06),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            isRegister
                                ? 'Has any account?'
                                : 'Doesn\'t has any account?',
                            style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5),
                          CustomTextButton(
                            title:
                                isRegister ? 'Sign in here' : 'Register here',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => isRegister
                                      ? const SignInScreen()
                                      : const RegisterScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.06),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            isRegister
                                ? 'By registering your account, you are agree to our'
                                : 'Use the application according to policy rules. Any ',
                            style: const TextStyle(
                              color: Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            isRegister
                                ? 'terms and condition'
                                : 'kinds of violations will be subject to sanctions',
                            style: TextStyle(
                              color: isRegister ? kBlueColor : Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.06),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
