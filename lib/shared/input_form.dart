import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    Key? key,
    required this.deviceHeight,
    required this.label,
    required this.hintText,
    required this.inputType,
    this.isPassword = false,
    this.isPhone = false,
  }) : super(key: key);

  final double deviceHeight;
  final String label;
  final String hintText;
  final TextInputType inputType;
  final bool isPassword;
  final bool isPhone;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
        ),
        SizedBox(height: deviceHeight * 0.01),
        Container(
          width: double.infinity,
          height: deviceHeight * 0.06,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            color: Colors.black12.withOpacity(0.01),
            border: Border.all(
              color: Colors.black38,
              width: 1.0,
            ),
          ),
          child: isPhone
              ? Row(
                  children: [
                    CountryCodePicker(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      showFlag: false,
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                      showDropDownButton: true,
                      initialSelection: 'JP',
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: inputType,
                        obscureText: isPassword,
                        decoration: InputDecoration(
                          hintText: hintText,
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                )
              : TextFormField(
                  keyboardType: inputType,
                  obscureText: isPassword,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                    suffixIcon: isPassword
                        ? const Icon(
                            Icons.visibility_rounded,
                            color: Colors.black,
                          )
                        : null,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    border: InputBorder.none,
                  ),
                ),
        ),
        SizedBox(height: deviceHeight * 0.02),
      ],
    );
  }
}
