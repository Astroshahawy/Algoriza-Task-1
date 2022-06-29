import 'package:flutter/material.dart';
import 'package:task_1/shared/constants.dart';

class IndRow extends StatelessWidget {
  const IndRow({
    Key? key,
    required int current,
    required this.pages,
  })  : _current = current,
        super(key: key);

  final int _current;
  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: pages.asMap().entries.map(
        (entry) {
          return Container(
            width: 20.0,
            height: 7.0,
            margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color:
                  _current == entry.key ? kOrangeColor : Colors.grey.shade300,
            ),
          );
        },
      ).toList(),
    );
  }
}
