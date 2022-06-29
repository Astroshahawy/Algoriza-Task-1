import 'package:flutter/material.dart';
import 'package:task_1/shared/input_form.dart';

import 'package:task_1/shared/sign_in_and_register_contents.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return SignInAndRegisterContents(
      label: 'Sign in',
      backButton: false,
      formFields: [
        InputForm(
          deviceHeight: deviceHeight,
          label: 'Phone Number',
          hintText: 'Eg. 812345678',
          inputType: TextInputType.phone,
          isPhone: true,
        ),
      ],
      buttonTitle: 'Sign In',
    );
  }
}
