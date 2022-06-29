import 'package:flutter/material.dart';

import 'package:task_1/shared/input_form.dart';
import 'package:task_1/shared/sign_in_and_register_contents.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return SignInAndRegisterContents(
      label: 'Register',
      formFields: [
        InputForm(
          deviceHeight: deviceHeight,
          label: 'Email',
          hintText: 'Eg. example@email.com',
          inputType: TextInputType.emailAddress,
        ),
        InputForm(
          deviceHeight: deviceHeight,
          label: 'Phone Number',
          hintText: 'Eg. 812345678',
          inputType: TextInputType.phone,
          isPhone: true,
        ),
        InputForm(
          deviceHeight: deviceHeight,
          label: 'Password',
          hintText: 'Password',
          inputType: TextInputType.visiblePassword,
          isPassword: true,
        ),
      ],
      buttonTitle: 'Register',
      backButton: true,
      isRegister: true,
    );
  }
}
