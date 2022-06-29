import 'package:flutter/material.dart';
import 'package:task_1/shared/constants.dart';
import 'package:task_1/onboarding_screen/page_view_content.dart';
import 'package:task_1/onboarding_screen/page_view_indicator.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({Key? key}) : super(key: key);

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> viewPages = [
      const PageViewContents(
          image: kOnboarding1,
          title: kFirstPageTitle,
          description: kFirstPageDescription),
      const PageViewContents(
          image: kOnboarding2,
          title: kSecondPageTitle,
          description: kSecondPageDescription),
    ];
    return Column(
      children: [
        Expanded(
          child: PageView(
            physics: const BouncingScrollPhysics(),
            children: viewPages,
            onPageChanged: (value) {
              setState(() {
                _currentPage = value;
              });
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        IndRow(
          current: _currentPage,
          pages: viewPages,
        ),
      ],
    );
  }
}
