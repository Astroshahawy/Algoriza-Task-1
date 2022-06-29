import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_1/shared/constants.dart';

class PageViewContents extends StatelessWidget {
  const PageViewContents({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Image.asset(
            kLogo,
            width: deviceSize.width * 0.3,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.025),
          SvgPicture.asset(
            image,
            height: deviceSize.height * 0.25,
            alignment: Alignment.bottomCenter,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }
}
